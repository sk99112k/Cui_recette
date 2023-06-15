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
  [
    {name: "日本料理"},
    {name: "イタリアン"},
    {name: "フレンチ"},
    {name: "中華"}
  ]
)

puts "------------list create-----------"

List.create!(
  [
    {name: "豚肉",name_kana: "ﾌﾞﾀﾆｸ",price: "1000",supplier: "にくやさん",lot: "1.0",unit: "kg"},
    {name: "人参",name_kana: "ﾆﾝｼﾞﾝ",price: "130",supplier: "八百屋",lot: "0.15",unit: "kg"},
    {name: "じゃがいも",name_kana: "ｼﾞｬｶﾞｲﾓ",price: "90",supplier: "八百屋",lot: "0.12",unit: "kg"},
    {name: "卵",name_kana: "ﾀﾏｺﾞ",price: "280",supplier: "とりや",lot: "1",unit: "p"},
    {name: "玉ねぎ",name_kana: "ﾀﾏﾈｷﾞ",price: "110",supplier: "八百屋",lot: "0.12",unit: "kg"},
    {name: "トマト",name_kana: "ﾄﾏﾄ",price: "120",supplier: "八百屋",lot: "1.0",unit: "kg"},
    {name: "スパゲッティ",name_kana: "ｽﾊﾟｹﾞｯﾃｨﾞ",price: "1500",supplier: "乾物",lot: "5.0",unit: "kg"},
    {name: "にんにく",name_kana: "ﾆﾝﾆｸ",price: "1000",supplier: "八百屋",lot: "1.0",unit: "kg"}
  ]
)

puts "------------member create-----------"

Member.create!(
  [
    {name: "山田太郎",email: "yt@gmail.com",password: "yyyttt"}
  ]
)

puts "------------end-----------"