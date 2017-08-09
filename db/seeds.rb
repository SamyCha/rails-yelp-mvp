# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

review1 = Review.create(content: "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.")
review2 = Review.create(content: "Une valeur sûre que cette belle maison du 17e et les recettes de Jean-Christophe Rizet")
review3 = Review.create(content: "Ca pue dedans")
review4 = Review.create(content: "Toilettes Degueu")
review5 = Review.create(content: "Cafard dans mon Sandwish")



puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "MacDo Sainte Catherine",
    address:      "112 rue du Fg St-Honoré Bordeaux",
    category:     "chinese",
    phone_number: "06 12 23 34 45",
    review:       review1

  },
  {
    name:         "MacDo Bouliac",
    address:      "4 rue Blainville Bouliac",
    category:     "italian",
    phone_number: "06 12 23 34 45",
    review:       review2

  },
  {
    name:         "MacDo Lastresne",
    address:      "route de Suresnes Lastresne",
    category:     "japanese",
    phone_number: "06 12 23 34 45",
    review:       review3

  }
  {
    name:         "Macdo St Loubes",
    address:      "route de Suresnes St Loubes",
    category:    "french",
    phone_number: "06 12 23 34 45",
    review:       review4

  }
  {
    name:         "Macdo Martillac",
    address:      "route de Suresnes Martillac",
    category:     "belgian",
    phone_number: "06 12 23 34 45",
    review:       review5

  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
