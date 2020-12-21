10.times{
    Pet.create(name: Faker::Games::Pokemon.name, health: 100, boredom: 100, hunger: 100)
}

