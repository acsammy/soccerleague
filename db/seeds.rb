# puts "Criando Admin-----------"
# Admin.find_or_create_by!(
#   email: "admin@admin.com",
#   password: "123456"
# )
puts "-----------ADMIN criado"
20.times do
  Team.find_or_create_by!(
    name: Faker::Team.name
  )
end
puts "------------ TEAMS criados"
puts "Criando Players ------------"
320.times do
  Player.find_or_create_by!(
    name: Faker::Name.name,
    team: Team.all.sample
  )
end
puts "------------ PLAYERS criados"
puts "Criando Championship-----------"
10.times do
  Championship.find_or_create_by!(
    name: Faker::GameOfThrones.city,
    modality: [0,0,0,0,0,1,1].sample
  )
end
puts "------------ CHAMPIONSHIP criados"
# puts "Criando Games------------"
# 10.times do
#   Game.find_or_create_by!(
#     team1 = Team.all.sample.name,
#     team2 = Team.all.sample.name,
#     score1 = "#{Random.rand(10)}",
#     score2 = "#{Random.rand(10)}",
#     winner = [team1, team2].sample,
#     championship = Championship.all.sample
#   )
# end
# puts "--------------- GAMES criados"
