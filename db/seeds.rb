# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vehicle.create(
    [
        {
           "id":"24uobf24jlgb",
           "make":"Tesla",
           "model":"X",
           "span_id": Span.create({
              "unit":"km",
              "distance":"450"
           }),
           "colors":[
              "red",
              "black"
           ],
           "price":"110000 EUR",
           "photo":"https://car.com/car.jpg"
        },
        {
           "id":"2ejvb2rouvb",
           "make":"Tesla",
           "model":"X",
           "span_id": Span.create({
              "unit":"km",
              "distance":"420"
           }),
           "colors":[
              "blue",
              "black"
           ],
           "price":"98000 EUR",
           "photo":"https://car.com/car2.jpg"
        },
        {
           "id":"8wbvwb0f8b",
           "make":"Mercedes Benz",
           "model":"EQC",
           "span_id": Span.create({
              "unit":"km",
              "distance":"450"
           }),
           "colors":[
              "red",
              "gray"
           ],
           "price":"79000 EUR",
           "photo":"https://car.com/car3.jpg"
        },
        {
           "id":"89webvqbvq",
           "make":"Mercedes Benz",
           "model":"EQS",
           "span_id": Span.create({
              "unit":"km",
              "distance":"470"
           }),
           "colors":[
              "red",
              "gray",
              "green"
           ],
           "price":"122000 EUR",
           "photo":"https://car.com/car4.jpg"
        },
        {
           "id":"56vhjbvqkbq",
           "make":"Audi",
           "model":"ETron",
           "span_id": Span.create({
              "unit":"km",
              "distance":"390"
           }),
           "colors":[
              "black",
              "gray"
           ],
           "price":"88000 EUR",
           "photo":"https://car.com/car6.jpg"
        }
     ]
)

