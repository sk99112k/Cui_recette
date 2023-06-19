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
    {name: "その他"},
    {name: "日本料理"},
    {name: "イタリアン"},
    {name: "フレンチ"},
    {name: "中華"}
  ]
)

puts "------------list create-----------"

list = List.create!(
  [
    {name: "豚肉",         name_kana: "ﾌﾞﾀﾆｸ",    price: "1000",  supplier: "にくやさん", lot: "1.0",  unit: "kg"},
    {name: "人参",         name_kana: "ﾆﾝｼﾞﾝ",    price: "130",   supplier: "八百屋",     lot: "0.15", unit: "kg"},
    {name: "じゃがいも",   name_kana: "ｼﾞｬｶﾞｲﾓ",  price: "90",    supplier: "八百屋",     lot: "0.12", unit: "kg"},
    {name: "卵",           name_kana: "ﾀﾏｺﾞ",     price: "280",   supplier: "とりや",     lot: "1",    unit: "p"},
    {name: "玉ねぎ",       name_kana: "ﾀﾏﾈｷﾞ",    price: "110",   supplier: "八百屋",     lot: "0.12", unit: "kg"},
    {name: "トマト",       name_kana: "ﾄﾏﾄ",      price: "120",   supplier: "八百屋",     lot: "1.0",  unit: "kg"},
    {name: "スパゲッティ", name_kana: "ｽﾊﾟｹﾞｯﾃｨﾞ", price: "1500",  supplier: "乾物",       lot: "5.0",  unit: "kg"},
    {name: "にんにく",     name_kana: "ﾆﾝﾆｸ",     price: "1000",  supplier: "八百屋",     lot: "1.0",  unit: "kg"},
    {name: "牛乳",         name_kana: "ｷﾞｭｳﾆｭｳﾞ",  price: "210",   supplier: "うしや",     lot: "1",    unit: "L"},
    {name: "白ねぎ",       name_kana: "ｼﾛﾈｷﾞ",    price: "110",   supplier: "八百屋",     lot: "0.12", unit: "kg"},
    {name: "豆腐",         name_kana: "ﾄｳﾌﾞ",     price: "88",    supplier: "大豆やさん", lot: "1",    unit: "丁"},
    {name: "ひき肉",       name_kana: "ﾋｷﾆｸ",     price: "770",   supplier: "にくやさん", lot: "1.0",  unit: "kg"},
    {name: "豆板醤",       name_kana: "ﾄｳﾊﾞﾝｼﾞｬﾝ", price: "520",   supplier: "ちょうみ",   lot: "0.5",  unit: "kg"},
    {name: "片栗粉",       name_kana: "ｶﾀｸﾘｺ",    price: "100",   supplier: "ちょうみ",   lot: "0.1",  unit: "kg"},
    {name: "粉チーズ",     name_kana: "ｺﾅﾁｰｽﾞ",   price: "280",   supplier: "ちょうみ",   lot: "0.12", unit: "kg"}
  ]
)

puts "------------member create-----------"

member = Member.create!(
  [
    {name: "山田太郎", email: "yt@gmail.com", password: "yyyttt"},
    {name: "山田花子", email: "yh@gmail.com", password: "yyyhhh"}
  ]
)

puts "------------recipe create-----------"

recipe = Recipe.create!(
  [
    {title: 'カレー', body: '本格カレーの作り方', genre_id: genre[0].id, member_id: member[0].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/curry.jpg"), filename: "curry.jpg")},

    {title: 'パスタ', body: '本格カルボナーラの作り方', genre_id: genre[2].id, member_id: member[1].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/past.jpg"), filename: "past.jpg")},

    {title: '麻婆豆腐', body: '本格麻婆豆腐の作り方', genre_id: genre[4].id, member_id: member[1].id}
  ]
)

puts "------------list_storage create-----------"

ListStorage.create!(
  [
    {list_id: list[0].id, recipe_id: recipe[0].id, quantity: 0.3, unit: "kg"},
    {list_id: list[1].id, recipe_id: recipe[0].id, quantity: 0.2, unit: "kg"},
    {list_id: list[2].id, recipe_id: recipe[0].id, quantity: 0.2, unit: "kg"},
    {list_id: list[4].id, recipe_id: recipe[0].id, quantity: 0.6, unit: "kg"},

    {list_id: list[3].id, recipe_id: recipe[1].id, quantity: 0.3, unit: "kg"},
    {list_id: list[6].id, recipe_id: recipe[1].id, quantity: 0.2, unit: "kg"},
    {list_id: list[8].id, recipe_id: recipe[1].id, quantity: 0.2, unit: "kg"},
    {list_id: list[14].id, recipe_id: recipe[1].id, quantity: 0.6, unit: "kg"},

    {list_id: list[7].id, recipe_id: recipe[2].id, quantity: 0.3, unit: "kg"},
    {list_id: list[9].id, recipe_id: recipe[2].id, quantity: 0.2, unit: "kg"},
    {list_id: list[10].id, recipe_id: recipe[2].id, quantity: 0.2, unit: "kg"},
    {list_id: list[11].id, recipe_id: recipe[2].id, quantity: 0.6, unit: "kg"},
    {list_id: list[12].id, recipe_id: recipe[2].id, quantity: 0.2, unit: "kg"},
    {list_id: list[13].id, recipe_id: recipe[2].id, quantity: 0.6, unit: "kg"},
  ]
)

puts "------------end-----------"