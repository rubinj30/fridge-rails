# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Fridge.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

fridge = Fridge.create(location: 'Kitchen', brand: 'Maytag', size: 80)
Food.create(fridge: fridge, name: 'Potato', weight: 1, vegan: true)
Food.create(fridge: fridge, name: 'Orange', weight: 2, vegan: true)
Food.create(fridge: fridge, name: 'Kiwi', weight: 4, vegan: true)
Food.create(fridge: fridge, name: 'Spam', weight: 6, vegan: false)
Drink.create(fridge: fridge, name: 'Zima', size: 12, alcoholic: false)

fridge = Fridge.create(location: 'Garage', brand: 'General Electric', size: 150)
Food.create(fridge: fridge, name: 'Wings', weight: 1, vegan: true)
Food.create(fridge: fridge, name: 'Shrimp', weight: 2, vegan: true)
Food.create(fridge: fridge, name: 'Beef', weight: 4, vegan: true)
Food.create(fridge: fridge, name: 'Chicken', weight: 6, vegan: false)
Drink.create(fridge: fridge, name: 'Soylent', size: 12, alcoholic: false)