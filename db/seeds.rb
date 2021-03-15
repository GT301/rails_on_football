# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "json"

Page.destroy_all
Club.destroy_all
Match.destroy_all
League.destroy_all

filename = Rails.root.join("db/en.1.clubs.json")

# puts "Loading in Clubs from #{filename}."

data = File.read(filename)
result = JSON.parse(data)

league = League.create(league_name: "Serie B 2020/21", rank: 10)
league = League.create(league_name: "Segunda División 2020/21", rank: 9)
league = League.create(league_name: "2. Bundesliga 2020/21", rank: 8)
league = League.create(league_name: "Championship 2020/21", rank: 7)
league = League.create(league_name: "Primeira Liga 2020/21", rank: 6)
league = League.create(league_name: "Ligue 1 2020/21", rank: 5)
league = League.create(league_name: "Bundesliga 2020/21", rank: 2)
league = League.create(league_name: "Premier League 2020/21", rank: 1)

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

league = League.create(league_name: "Serie A 2020/21", rank: 4)

filename_3 = Rails.root.join("db/it.1.clubs.json")
data_3 = File.read(filename_3)
result_3 = JSON.parse(data_3)

result_3["clubs"].each do |c|
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

filename_4 = Rails.root.join("db/it.1.json")
data_4 = File.read(filename_4)
result_4 = JSON.parse(data_4)

result_4["matches"].each do |m|
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

league = League.create(league_name: "Primera División 2020/21", rank: 3)

filename_5 = Rails.root.join("db/es.1.clubs.json")
data_5 = File.read(filename_5)
result_5 = JSON.parse(data_5)

result_5["clubs"].each do |c|
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

filename_6 = Rails.root.join("db/es.1.json")
data_6 = File.read(filename_6)
result_6 = JSON.parse(data_6)

result_6["matches"].each do |m|
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

Page.create(
  title:     "en.1.clubs.json",
  content:   "The clubs belong to Premier League 2020/21.",
  permalink: "https://github.com/openfootball/football.json/blob/master/2020-21/en.1.clubs.json"
)

Page.create(
  title:     "en.1.json",
  content:   "The matches info belong to Premier League 2020/21.",
  permalink: "https://github.com/openfootball/football.json/blob/master/2020-21/en.1.json"
)

puts "Created #{League.count} leagues."
puts "Created #{Club.count} clubs."
puts "Created #{Match.count} matches."
puts "Created #{Page.count} pages."
