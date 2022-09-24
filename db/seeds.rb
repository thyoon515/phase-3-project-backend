puts "🌱 Seeding spices..."

# Seed your database here

Dealership.create(name: "Buy Used Cars", location: "123 Usedcar Road, Queens, NY, 10011", contact: "646-222-3333")
Dealership.create(name: "Michael and Milo", location: "25 Morbius Street, New York, NY, 11102", contact: "212-666-7777")
Dealership.create(name: "Cars on Us", location: "914 Bronx Street, Bronx, NY, 10001", contact: "917-555-1111")
Dealership.create(name: "Best Cars Only", location: "9 West New York Ave, Brooklyn, NY, 12223", contact: "718-444-8888")

5.times do

    Car.create(
        make_and_model: Faker::Vehicle.make_and_model, 
        color: Faker::Vehicle.color, 
        year: Faker::Vehicle.year, 
        mileage: Faker::Vehicle.mileage, 
        price: rand(1000..100000),
        dealership_id: Dealership.first.id
    )
end

3.times do

    Car.create(
        make_and_model: Faker::Vehicle.make_and_model, 
        color: Faker::Vehicle.color, 
        year: Faker::Vehicle.year, 
        mileage: Faker::Vehicle.mileage, 
        price: rand(1000..100000),
        dealership_id: Dealership.second.id
    )
end

7.times do

    Car.create(
        make_and_model: Faker::Vehicle.make_and_model, 
        color: Faker::Vehicle.color, 
        year: Faker::Vehicle.year, 
        mileage: Faker::Vehicle.mileage, 
        price: rand(1000..100000),
        dealership_id: Dealership.third.id
    )
end

4.times do

    Car.create(
        make_and_model: Faker::Vehicle.make_and_model, 
        color: Faker::Vehicle.color, 
        year: Faker::Vehicle.year, 
        mileage: Faker::Vehicle.mileage, 
        price: rand(1000..100000),
        dealership_id: Dealership.last.id
    )
end

puts "✅ Done seeding!"
