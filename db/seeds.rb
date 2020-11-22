# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Child.destroy_all
Diaper.destroy_all
Feeding.destroy_all
Nap.destroy_all


# users
User.create(name: "Mushfi", username: "mushmush", password: "abc123")

# children
Child.create(user_id: 1, name: "Sean", birthday: "2000-11-30", age: 18, password: "abc456")
Child.create(user_id: 1, name: "Hasibul", birthday: "1995-07-07", age: 25, password: "abc456")

# diapers
Diaper.create(child_id: 1, wet: true, solid: false, color: "brown")
Diaper.create(child_id: 1, wet: false, solid: true, color: "brown")
Diaper.create(child_id: 1, wet: false, solid: true, color: "brown")
Diaper.create(child_id: 1, wet: false, solid: true, color: "green")
Diaper.create(child_id: 1, wet: true, solid: false, color: "yellow")
Diaper.create(child_id: 1, wet: false, solid: true, color: "brown")
Diaper.create(child_id: 1, wet: true, solid: false, color: "brown")
Diaper.create(child_id: 1, wet: true, solid: false, color: "dark brown")
Diaper.create(child_id: 1, wet: true, solid: false, color: "brown")
Diaper.create(child_id: 1, wet: true, solid: false, color: "brown")
Diaper.create(child_id: 1, wet: false, solid: true, color: "yellow")
Diaper.create(child_id: 1, wet: false, solid: true, color: "brown")



# feedings
Feeding.create(child_id: 1, method: "breast", duration: "10 minutes", amount: 4)
Feeding.create(child_id: 1, method: "breast", duration: "4 minutes", amount: 7)
Feeding.create(child_id: 1, method: "formula", duration: "6 minutes", amount: 9)
Feeding.create(child_id: 1, method: "formula", duration: "8 minutes", amount: 3)

# naps
Nap.create(child_id: 1, duration: "2 hours")