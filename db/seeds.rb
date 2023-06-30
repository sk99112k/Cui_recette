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
    {name: "お米",         name_kana: "ｵｺﾒ",      price: "3000",  supplier: "八百屋",     lot: "5.0",  unit: "kg"},
    {name: "スパゲッティ", name_kana: "ｽﾊﾟｹﾞｯﾃｨﾞ", price: "1500",  supplier: "乾物",       lot: "5.0",  unit: "kg"},
    {name: "にんにく",     name_kana: "ﾆﾝﾆｸ",     price: "1000",  supplier: "八百屋",     lot: "1.0",  unit: "kg"},
    {name: "牛乳",         name_kana: "ｷﾞｭｳﾆｭｳﾞ",  price: "210",   supplier: "うしや",     lot: "1",    unit: "L"},
    {name: "白ねぎ",       name_kana: "ｼﾛﾈｷﾞ",    price: "110",   supplier: "八百屋",     lot: "0.12", unit: "kg"},

    {name: "豆腐",         name_kana: "ﾄｳﾌﾞ",     price: "88",    supplier: "大豆やさん", lot: "1",    unit: "丁"},
    {name: "ひき肉",       name_kana: "ﾋｷﾆｸ",     price: "770",   supplier: "にくやさん", lot: "1.0",  unit: "kg"},
    {name: "豆板醤",       name_kana: "ﾄｳﾊﾞﾝｼﾞｬﾝ", price: "520",   supplier: "ちょうみ",   lot: "0.5",  unit: "kg"},
    {name: "片栗粉",       name_kana: "ｶﾀｸﾘｺ",    price: "100",   supplier: "ちょうみ",   lot: "0.1",   unit: "kg"},
    {name: "粉チーズ",     name_kana: "ｺﾅﾁｰｽﾞ",   price: "280",   supplier: "ちょうみ",   lot: "0.12",  unit: "kg"},
    {name: "車海老",       name_kana: "ｸﾙﾏｴﾋﾞ",   price: "250",   supplier: "海鮮",       lot: "1",     unit: "尾"},
    {name: "酢",           name_kana: "ｽ",       price: "180",   supplier: "ちょうみ",   lot: "0.75",  unit: "kg"},
    {name: "砂糖",         name_kana: "ｻﾄｳ",     price: "180",   supplier: "ちょうみ",   lot: "1",     unit: "kg"},
    {name: "山葵",         name_kana: "ﾜｻﾋﾞ",    price: "200",   supplier: "八百屋",     lot: "50",    unit: "g"},
    {name: "アスパラ",     name_kana: "ｱｽﾊﾟﾗ",   price: "130",   supplier: "八百屋",     lot: "1",     unit: "束"},

    {name: "アサリ",       name_kana: "ｱｻﾘ",     price: "800",   supplier: "海鮮",       lot: "1",     unit: "kg"},
    {name: "蓼の葉",       name_kana: "ﾀﾃﾉﾊ",     price: "700",   supplier: "八百屋",    lot: "0.1",   unit: "kg"},
    {name: "鮎",           name_kana: "ｱﾕ",      price: "300",   supplier: "海鮮",       lot: "1",     unit: "尾"},
    {name: "塩",           name_kana: "ｼｵ",      price: "700",   supplier: "ちょうみ",   lot: "1",     unit: "kg"},
    {name: "鶏レバー",     name_kana: "ﾄﾘﾚﾊﾞｰ",   price: "2000",   supplier: "にくやさん",lot: "1",     unit: "kg"},
    {name: "ローリエ",     name_kana: "ﾛｰﾘｴ",     price: "500",   supplier: "八百屋",     lot: "0.1",   unit: "kg"},
    {name: "網脂",         name_kana: "ｱﾐｱﾌﾞﾗ",   price: "700",   supplier: "にくやさん", lot: "1",     unit: "kg"},
    {name: "ブランデー",   name_kana: "ﾌﾞﾗﾝﾃﾞｰ",  price: "1500",   supplier: "酒屋",      lot: "0.75",  unit: "L"},
    {name: "キャトルエピス",name_kana: "ｷｬﾄﾙｴﾋﾟｽ",price: "400",   supplier: "ちょうみ",    lot: "0.02",  unit: "kg"},
    {name: "エシャロット", name_kana: "ｴｼｧﾛｯﾄ",  price: "100",   supplier: "八百屋",       lot: "30",    unit: "g"},

    {name: "胡椒",         name_kana: "ｺｼｮｳ",    price: "200",   supplier: "ちょうみ",    lot: "30",     unit: "g"},
    {name: "タイム",       name_kana: "ﾀｲﾑ",     price: "500",   supplier: "八百屋",     lot: "0.1",     unit: "kg"},
    {name: "アオリイカ",   name_kana: "ｱｵﾘｲｶ",   price: "1000",   supplier: "海鮮",       lot: "0.1",     unit: "kg"},
    {name: "そら豆",       name_kana: "ｿﾗﾏﾒ",    price: "600",   supplier: "八百屋",     lot: "0.1",     unit: "kg"},
    {name: "鶏がらスープ", name_kana: "ﾄﾘｶﾞﾗｽｰﾌﾟ",price: "350",   supplier: "ちょうみ",   lot: "0.1",     unit: "kg"},
    {name: "オリーブオイル",name_kana: "ｵﾘｰﾌﾞｵｲﾙﾟ",price: "1280", supplier: "ちょうみ",   lot: "0.1",     unit: "kg"},
    {name: "カレールー",   name_kana: "ｶﾚｰﾙｰﾞ",   price: "250",   supplier: "ちょうみ",   lot: "0.5",    unit: "kg"}
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
    {title: 'カレー',
    body: '１、豚肉を炒める
           ２、人参、玉ねぎ、じゃがいもも炒めて、玉ねぎに火が通ったら水を２L加えて2時間ほど煮込む。
           ３、カレールーをあらかじめお湯で溶かしておき、２に入れる。
           ４、1時間ほど煮込む。',
    genre_id: genre[0].id, member_id: member[0].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/curry.jpg"), filename: "curry.jpg")},

    {title: 'パスタ',
    body: '１、スパゲティをゆがく
           ２、卵、粉チーズ、ブラックペッパーをボールに入れて混ぜ合わせる。
           ３、そら豆は3分ほど塩茹でする
           ４、アオリイカはフライパンで炒める
           ５、茹でたスパゲッティを２に入れて混ぜ合わせる。
           ６、お皿に盛り付けて完成',
    genre_id: genre[2].id, member_id: member[0].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/past.jpg"), filename: "past.jpg")},

    {title: '麻婆豆腐',
    body: '１、フライパンに、にんにくとサラダあぶら大さじ１を入れて火にかける。香りが出たら、豆板醤を入れ挽肉を炒める。
           ２、ひき肉に火が通ったら鶏ガラスープを入れ沸騰させる。
           ３、２の火を止めて、水で解いた片栗粉を入れて豆腐が潰れないように混ぜる。
           ４、火をつけて一度沸騰させ、とろみが出たら完成',
    genre_id: genre[4].id, member_id: member[0].id},

    {title: '寿司(車海老)',
    body: '寿司酢を作る
           １、砂糖と酢を合わせ、弱火でコトコトと火にかける。
           ２、氷水で粗熱を取る。

           寿司
           １、桶の1/3に米を広げて、酢を全体的にかけ、しゃもじで米を切るように混ぜる。
           米が固まっていたら、軽く潰すようにする。
           ２、米を7g程度手に取りまるめ、左手で整形する。
           ３、米の上にわさびを乗せ、その上に車海老をのせる。
           ４、形を整形して完成

           米を丸める時に強く握りすぎない。',
    genre_id: genre[1].id, member_id: member[0].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/sushi.jpg"), filename: "sushi.jpg")},

    {title: 'アスパラとシーフードのチーズリゾット',
    body: '１、フライパンにオリーブオイルとにんにくを入れ、火にかける。
           ２、アスパラをゆがいておく
           ３、にんにくの香りがしてきたら、玉ねぎをシュエしてアスパラ、アサリ、車海老を炒める。
           ４、牛乳と鶏がらスープを入れ、そこにお米を入れて沸騰させる。
           ５、粉チーズをふりかけて混ぜる
           ６、お皿に乗せて完成',
    genre_id: genre[2].id, member_id: member[1].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/risotto.jpg"), filename: "risotto.jpg")},

    {title: '鮎の塩焼き',
    body: '蓼酢
           １、ご飯と蓼の葉をすり鉢ですりつぶす。
           ２、酢を少しずつ加える。

           鮎
           １、エラを外す
           ２、尾びれや背びれに塩とつけて、ひれを立たせる。
           ３、焼き台で遠火の中火でじっくり焼く。

           蓼酢をつけながらお召し上がりください。',
    genre_id: genre[1].id, member_id: member[1].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/ayu.jpg"), filename: "ayu.jpg")},

    {title: 'パテ・ド・カンパーニュ',
    body: '１、テリーヌ型に網脂を敷く。
           ２、にんにく、エシャロット、ニンジンをみじん切りにする。にんじんは食感を残すためにも３mm角に切る。
           ３、豚肉ミンチ、鶏レバー、キャトルエピス、塩胡椒、卵、ブランデー、２を合わせてこねる。
           ４、１に詰めて、はみ出てる網脂で包む。
           ５、上にタイム、ローリエを乗せる。
           ６、上にアルミホイルを被せ、湯煎しながら１８０度で1時間焼く。',
    genre_id: genre[3].id, member_id: member[1].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("db/fixtures/pate.jpg"), filename: "pate.jpg")}
  ]
)

puts "------------list_storage create-----------"

ListStorage.create!(
  [
    # カレー
    {list_id: list[0].id, recipe_id: recipe[0].id, quantity: 0.3, unit: "kg"},
    {list_id: list[1].id, recipe_id: recipe[0].id, quantity: 0.2, unit: "kg"},
    {list_id: list[2].id, recipe_id: recipe[0].id, quantity: 0.2, unit: "kg"},
    {list_id: list[4].id, recipe_id: recipe[0].id, quantity: 0.6, unit: "kg"},
    {list_id: list[36].id, recipe_id: recipe[0].id, quantity: 0.03, unit: "kg"},
    # パスタ
    {list_id: list[3].id, recipe_id: recipe[1].id, quantity: 0.06, unit: "kg"},
    {list_id: list[6].id, recipe_id: recipe[1].id, quantity: 0.1, unit: "kg"},
    {list_id: list[14].id, recipe_id: recipe[1].id, quantity: 0.01, unit: "kg"},
    {list_id: list[30].id, recipe_id: recipe[1].id, quantity: 0, unit: "kg"},
    {list_id: list[32].id, recipe_id: recipe[1].id, quantity: 0.02, unit: "kg"},
    {list_id: list[33].id, recipe_id: recipe[1].id, quantity: 0.02, unit: "kg"},
    # 麻婆豆腐
    {list_id: list[7].id, recipe_id: recipe[2].id, quantity: 0.003, unit: "kg"},
    {list_id: list[9].id, recipe_id: recipe[2].id, quantity: 0.02, unit: "kg"},
    {list_id: list[10].id, recipe_id: recipe[2].id, quantity: 0.2, unit: "kg"},
    {list_id: list[11].id, recipe_id: recipe[2].id, quantity: 0.3, unit: "kg"},
    {list_id: list[12].id, recipe_id: recipe[2].id, quantity: 0.005, unit: "kg"},
    {list_id: list[13].id, recipe_id: recipe[2].id, quantity: 0.01, unit: "kg"},
    {list_id: list[34].id, recipe_id: recipe[2].id, quantity: 0.3, unit: "kg"},
    # 寿司
    {list_id: list[5].id,  recipe_id: recipe[3].id, quantity: 0.1,  unit: "kg"},
    {list_id: list[15].id, recipe_id: recipe[3].id, quantity: 10,   unit: "尾"},
    {list_id: list[16].id, recipe_id: recipe[3].id, quantity: 0.02, unit: "kg"},
    {list_id: list[17].id,  recipe_id: recipe[3].id, quantity: 0.01, unit: "kg"},
    {list_id: list[18].id,  recipe_id: recipe[3].id, quantity: 0, unit: "適量"},
    # リゾット
    {list_id: list[19].id, recipe_id: recipe[4].id, quantity: 1, unit: "本"},
    {list_id: list[20].id, recipe_id: recipe[4].id, quantity: 30, unit: "g"},
    {list_id: list[15].id, recipe_id: recipe[4].id, quantity: 0.5, unit: "尾"},
    {list_id: list[14].id, recipe_id: recipe[4].id, quantity: 10, unit: "g"},
    {list_id: list[7].id, recipe_id: recipe[4].id, quantity: 1, unit: "片"},
    {list_id: list[8].id, recipe_id: recipe[4].id, quantity: 50, unit: "ml"},
    {list_id: list[4].id, recipe_id: recipe[4].id, quantity: 20, unit: "g"},
    {list_id: list[5].id,  recipe_id: recipe[4].id, quantity: 0.1,  unit: "kg"},
    {list_id: list[34].id,  recipe_id: recipe[4].id, quantity: 0.05,  unit: "kg"},
    {list_id: list[35].id,  recipe_id: recipe[4].id, quantity: 0.1,  unit: "kg"},
    # 鮎
    {list_id: list[5].id, recipe_id: recipe[5].id, quantity: 10, unit: "g"},
    {list_id: list[16].id, recipe_id: recipe[5].id, quantity: 5, unit: "ml"},
    {list_id: list[21].id, recipe_id: recipe[5].id, quantity: 3, unit: "g"},
    {list_id: list[22].id, recipe_id: recipe[5].id, quantity: 1, unit: "尾"},
    {list_id: list[23].id, recipe_id: recipe[5].id, quantity: 20, unit: "g"},
    # パテドカンパーニュ
    {list_id: list[0].id, recipe_id: recipe[6].id, quantity: 0.3, unit: "kg"},
    {list_id: list[7].id, recipe_id: recipe[6].id, quantity: 1,   unit: "片"},
    {list_id: list[3].id, recipe_id: recipe[6].id, quantity: 1,   unit: "個"},
    {list_id: list[1].id, recipe_id: recipe[6].id, quantity: 0.5, unit: "kg"},
    {list_id: list[24].id, recipe_id: recipe[6].id, quantity: 0.15, unit: "kg"},
    {list_id: list[25].id, recipe_id: recipe[6].id, quantity: 2,   unit: "枚"},
    {list_id: list[26].id, recipe_id: recipe[6].id, quantity: 0.15, unit: "kg"},
    {list_id: list[27].id, recipe_id: recipe[6].id, quantity: 0.15, unit: "ml"},
    {list_id: list[28].id, recipe_id: recipe[6].id, quantity: 0,   unit: "適量"},
    {list_id: list[29].id, recipe_id: recipe[6].id, quantity: 0.02, unit: "kg"},
    {list_id: list[30].id, recipe_id: recipe[6].id, quantity: 0,   unit: "適量"},
    {list_id: list[31].id, recipe_id: recipe[6].id, quantity: 0,   unit: "適量"}
  ]
)

puts "------------comment create-----------"

Comment.create!(
  [
    {recipe_id: recipe[0].id, member_id: member[1].id, body: '材料にカレールーの表記がないです。'},
    {recipe_id: recipe[1].id, member_id: member[1].id, body: 'そら豆の茹で時間も分かりやすいように、記載して欲しいです。'},
    {recipe_id: recipe[2].id, member_id: member[1].id, body: '山椒も入れた方がいいと思います。'},
    {recipe_id: recipe[4].id, member_id: member[0].id, body: '最後盛り付けの際に、パセリを振りかけた方が彩りがいいのでは？'}
  ]
)

puts "------------end-----------"