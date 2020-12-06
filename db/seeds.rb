Monster.destroy_all

10.times{
    Monster.create(name: Faker::Games::Pokemon.name, health: Faker::Number.within(range: 1..10))
}