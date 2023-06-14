# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "s@gmail.com",
  password: "syksyk"
)

puts "------------genre create-----------"

Genre.create!(
  name: "和食"
)

puts "------------list create-----------"

List.create!(
  name: "お肉",
  name_kana: "ｵﾆｸ",
  price: "1000",
  supplier: "おにくやさん",
  lot: "1",
  unit: "kg"
)

puts "------------member create-----------"

Member.create!(
  name: "sayaka",
  email: "sk@gmail.com",
  password: "syksyk"
)

puts "------------end-----------"