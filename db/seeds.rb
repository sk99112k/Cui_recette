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

genre = Genre.create!(
  [
    {name: "日本料理"},
    {name: "イタリアン"},
    {name: "フレンチ"},
    {name: "中華"},
    {name: "その他"}
  ]
)

puts "------------list create-----------"

list = List.create!(
  [
    {name: "豚肉", name_kana: "ﾌﾞﾀﾆｸ", price: "1000", supplier: "にくやさん", lot: "1.0", unit: "kg"},
    {name: "人参", name_kana: "ﾆﾝｼﾞﾝ", price: "130", supplier: "八百屋", lot: "0.15", unit: "kg"},
    {name: "じゃがいも", name_kana: "ｼﾞｬｶﾞｲﾓ", price: "90", supplier: "八百屋", lot: "0.12", unit: "kg"},
    {name: "卵", name_kana: "ﾀﾏｺﾞ",price: "280", supplier: "とりや", lot: "1", unit: "p"},
    {name: "玉ねぎ", name_kana: "ﾀﾏﾈｷﾞ", price: "110", supplier: "八百屋", lot: "0.12", unit: "kg"},
    {name: "トマト", name_kana: "ﾄﾏﾄ", price: "120", supplier: "八百屋", lot: "1.0", unit: "kg"},
    {name: "スパゲッティ", name_kana: "ｽﾊﾟｹﾞｯﾃｨﾞ", price: "1500", supplier: "乾物" ,lot: "5.0" ,unit: "kg"},
    {name: "にんにく", name_kana: "ﾆﾝﾆｸ", price: "1000", supplier: "八百屋", lot: "1.0", unit: "kg"}
  ]
)

puts "------------member create-----------"

member = Member.create!(
  [
    {name: "山田太郎", email: "yt@gmail.com", password: "yyyttt"}
  ]
)

puts "------------recipe create-----------"

recipe = Recipe.create!(
  [
    {title: 'カレー', body: '本格カレーの作り方', genre_id: genre[4].id, member_id: member[0].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/curry.jpg"), filename: "curry.jpg")},

    {title: 'パスタ', body: '本格スパゲッティの作り方', genre_id: genre[1].id, member_id: member[0].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/past.jpg"), filename: "past.jpg")}
  ]
)

puts "------------list_storage create-----------"

ListStorage.create!(
  [
    {list_id: list[1].id, recipe_id: recipe[0].id, quantity: 1.2, unit: "kg"},
    {list_id: list[2].id, recipe_id: recipe[0].id, quantity: 2.0, unit: "kg"}
  ]
)

puts "------------end-----------"