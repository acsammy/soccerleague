puts "Criando Teams-----------"
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
