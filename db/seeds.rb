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
# puts "Criando Match------------"
# 100.times do
#   Match.find_or_create_by!(
#     home_id = Team.all.sample,
#     visitor_id = Team.all.sample,
#     score1 = "#{Random.rand(10)}",
#     score2 = "#{Random.rand(10)}",
#     championship_id = Championship.all.sample,
#     winner = Team.all.sample
#   )
# end
# puts "--------------- MATCH criados"
