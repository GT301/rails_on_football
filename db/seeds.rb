# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "json"

Club.destroy_all
League.destroy_all
Match.destroy_all

filename = Rails.root.join("db/en.1.clubs.json")

# puts "Loading in Clubs from #{filename}."

data = File.read(filename)
result = JSON.parse(data)

league = League.create(league_name: "Premier League 2020/21")

result["clubs"].each do |c|
  club = league.clubs.create(
    club_name: c["name"],
    code:      c["code"],
    country:   c["country"]
  )

  if club.save
  else
    club.errors.messages.each do |column, errors|
      errors.each do |error|
        puts "The #{column} property #{error}."
      end
    end
  end
end

filename_2 = Rails.root.join("db/en.1.json")
data_2 = File.read(filename_2)
result_2 = JSON.parse(data_2)

result_2["matches"].each do |m|
  match = league.matches.create(
    round: m["round"],
    date:  m["date"],
    team1: m["team1"],
    team2: m["team2"]
  )

  if match.save
  else
    club.errors.messages.each do |column, errors|
      errors.each do |error|
        puts "The #{column} property #{error}."
      end
    end
  end
end

puts "Created #{League.count} leagues."
puts "Created #{Club.count} clubs."
puts "Created #{Match.count} matches."
