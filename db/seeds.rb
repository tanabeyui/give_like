# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
end_users = EndUser.create!(
  [
    {email: 'aaa@test.com', screen_name: 'tuda0405', name: '津田雅史', password: '060530', birth_day: '1990-04-05', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user1.jpg"), filename:"sample-user1.jpg")},
    {email: 'bbb@test.com', screen_name: 'xxxyumixxx', name: 'Yumi', password: '060530', birth_day: '2004-07-25', gender: 'female', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user2.jpg"), filename:"sample-user2.jpg")},
    {email: 'ccc@test.com', screen_name: '0923tatata', name: 'TakashiTakata', password: '060530', birth_day: '1980-01-21', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user3.jpg"), filename:"sample-user3.jpg")},
    {email: 'ddd@test.com', screen_name: 'mmmmayuko', name: 'mayuko', password: '060530', birth_day: '2000-06-15', gender: 'female', is_deleted: 'unsubscribe', internet_protocol_address: '14.13.9.97', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user4.jpg"), filename:"sample-user4.jpg")},
    {email: 'eee@test.com', screen_name: 'mitsu999owo', name: 'M', password: '060530', birth_day: '1996-10-22', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user5.jpg"), filename:"sample-user5.jpg")},
    {email: 'fff@test.com', screen_name: 'sbunsss', name: 'nanashi', password: '060530', birth_day: '1960-11-11', gender: 'male', is_deleted: 'unsubscribe', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user6.jpg"), filename:"sample-user6.jpg")},
    {email: 'ggg@test.com', screen_name: 'matsudasan', name: 'KentaMatsuda', password: '060530', birth_day: '1970-09-12', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user7.jpg"), filename:"sample-user7.jpg")},
    {email: 'hhh@test.com', screen_name: '0kanakana0', name: 'おおばかなこ', password: '060530', birth_day: '1994-04-01', gender: 'female', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user8.jpg"), filename:"sample-user8.jpg")},
    {email: 'iii@test.com', screen_name: 'suzukimaiko', name: 'MAIKO.', password: '060530', birth_day: '1964-02-22', gender: 'female', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user9.jpg"), filename:"sample-user9.jpg")},
    {email: 'jjj@test.com', screen_name: 'sachio380', name: '加藤幸男', password: '060530', birth_day: '1960-12-03', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user10.jpg"), filename:"sample-user10.jpg")}
  ]
)

Review.create!(
  [
    {
      code: "masuyone:10000016",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/masuyone/cabinet/m1/bana2/hp18-2000off.jpg?_ex=128x128",
      name: "母の日 ギフト 早割 最安挑戦クーポンで12800円送料無料！最大3kg★選べるメガ盛 元祖カット済生ずわい蟹or生棒ポーションor爪下肩肉3kg[かに/カニ/かにしゃぶ/むき身/鍋/カニしゃぶ]父の日 お取り寄せ グルメ ギフト 福袋 プレゼント",
      genre: 110411,
      category: "食品",
      price: 14800,
      url:
       "https://hb.afl.rakuten.co.jp/hgc/g00pmn5c.tv4su20a.g00pmn5c.tv4svbce/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmasuyone%2F130007%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmasuyone%2Fi%2F10000016%2F",
      body:
       "かに鍋用に購入しました。\r\n低価格なので少々不安出来たが、身もぎっしり詰まっており食べ応えがあって美味しかったです。\r\n強いて言えば殻から身が剝がしにくく、食べ易くはありませんが\r\n値段を踏まえた上で考えるととてもいい買い物でした。\r\n今冬中にまた購入しようかと考えています。",
      evaluation: 4.5,
      getting_method: "self_purchase",
      giver: "no_giver",
      gifted_event: "no_date",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[0].id
    },
    {
      code: "likaman:10025925",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/likaman/cabinet/rakuten40/k57n18_2302_500a.jpg?_ex=128x128",
      name: "(全品P3倍 3/15限定)あす楽 時間指定不可 純米大吟醸入り 日本酒 大吟醸 飲み比べ セット720ml 5本50％OFF 半額 冷酒 ギフト 送料無料 720ml 5本お歳暮 御歳暮 バイヤー厳選 4合瓶 清酒 ギフト 限定 贈答用 飲み比べ RSL",
      genre: 567223,
      category: "日本酒・焼酎",
      price: 5720,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00qo2rc.tv4su800.g00qo2rc.tv4svf3f/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Flikaman%2Fk57%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Flikaman%2Fi%2F10025925%2F",
      body: "結婚祝いに同僚からいただきました。妻も日本酒好きだと知りプレゼントしてくれたそうです。二人で飲み比べてますが、どれも美味しい！やはり酒は日本酒に限る！",
      evaluation: 4.5,
      getting_method: "gift",
      giver: "coworker",
      gifted_event: "wedding_gift",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[0].id
    },
    {
      code: "low-ya:10007400",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/low-ya/cabinet/event/event_230315/cart/vg-pola.jpg?_ex=128x128",
      name: "[クーポンで5％OFF! 3/15 0:00-23:59] 座椅子 【 42段ギア搭載 ★ 1億円 座椅子 】 低反発 座いす リクライニング チェア チェアー 1人掛け 一人用 ソファー ソファ 座イス コンパクト 一人暮らし かわいい おしゃれ こたつ",
      genre: 215538,
      category: "インテリア・寝具・収納",
      price: 6990,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00pxdhc.tv4su50d.g00pxdhc.tv4sv2a3/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Flow-ya%2Fvg-pola%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Flow-ya%2Fi%2F10007400%2F",
      body: "引っ越し祝いに友人がくれました。私の部屋の雰囲気やテーマカラーをしっかりと踏まえた上でのプレゼントで嬉しかったです。ただすぐ汚れます。ので星一つ減らして星５で。",
      evaluation: 4.0,
      getting_method: "gift",
      giver: "friend",
      gifted_event: "housewarming",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[0].id
    },
    {
      code: "luire:10004549",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/luire/cabinet/plus03/mask-35_30cp.jpg?_ex=128x128",
      name:
        "【クーポンで973円(1点あたりの最安) MAX30%OFF】パック シートマスク フェイスマスク フェイスパック 美容マスク 化粧水 大容量 限定 ローズ ラベンダー ランキング プレゼント ギフト [PLuS / プリュ プラセンタ モイスチュアマスク 35枚入 ] ZZ【プリュ公式】",
      genre: 503020,
      category: "美容・コスメ・香水",
      price: 1390,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00po0zc.tv4su150.g00po0zc.tv4sv9a0/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fluire%2Fpmm-yami%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fluire%2Fi%2F10004549%2F",
      body: "かれこれ愛用して2年♡いろんなフェイスパックを試しましたが、これが一番コスパが良い！最高です！！",
      evaluation: 5.0,
      getting_method: "self_purchase",
      giver: "no_giver",
      gifted_event: "no_date",
      is_anonymous: "onymous",
      is_displayed: "display",

      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[1].id
    },
    {
      code: "hobinavi:10464869",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/hobinavi/cabinet/3/lpc/01/3lpc0105aasg-1-p15.jpg?_ex=128x128",
      name:
        "【ポイント15倍！】【2枚入】iPhone ガラスフィルム iPhone14 iPhone14Plus iPhone14Pro iPhone14ProMax ガラス ガラスフィルム iPhone13 mini iPhone13 Pro 13 Pro Max iPhoneSE3 SE3 第3世代 保護フィルム ブルーライトカット iPhone12",
      genre: 560278,
      category: "スマートフォン・タブレット",
      price: 1000,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00qff7c.tv4su67b.g00qff7c.tv4svacd/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fhobinavi%2Frh-9h-film-cl%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fhobinavi%2Fi%2F10464869%2F",
      body: "誕生日に彼氏から貰いました。たしかにガラスフィルムが欲しいとは言ってたし、実用的なプレゼントの方が好きとも事前に伝えてましたが、それにした
      って普通恋人の誕生日に贈る？幻滅しました。",
      evaluation: 0.5,
      getting_method: "gift",
      giver: "lover",
      gifted_event: "birthday",
      is_anonymous: "anonymous",
      is_displayed: "non_display",
      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[1].id
    },
    {
      code: "f192023-fujiyoshida:10001022",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/f192023-fujiyoshida/cabinet/08146249/08146250/f125-150-151-s-r.jpg?_ex=128x128",
      name:
        "【ふるさと納税】 ネックレス ダイヤ ダイヤモンド スクエア ペンダント アクセサリー 18金 イエローゴールド ホワイトゴールド K18 宝石 ジュエリー プレゼント レ
      ディース ギ\r\n      フト 女性 MJ098 MJ099 4月 誕生石 誕生日 記念日 ホワイトデー 母の日 【品質保証書付き】",
      genre: 111029,
      category: "ジュエリー・アクセサリー",
      price: 70000,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00srlwc.tv4su01d.g00srlwc.tv4sv4d4/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Ff192023-fujiyoshida%2Fraku918%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Ff192023-fujiyoshida%2Fi%2F10001022%2F",
       body: "付き合って1ヶ月の誕生日に彼氏に貰いました。私は4月生まれでもないし、交際歴も短いしで、どう考えても元カノ用に買ってたネックレスを使いまわしされた気が
      します。最悪。",
      evaluation: 0.5,
      getting_method: "gift",
      giver: "lover",
      gifted_event: "birthday",
      is_anonymous: "anonymous",
      is_displayed: "non_display",
      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[1].id
    },
    {
      code: "mtgec-beauty:10002009",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/mtgec-beauty/cabinet/refa/heart_brush/flick/800x800.jpg?_ex=128x128",
      name: "【SNSで話題！】 リファ ハートブラシ ReFa HEART BRUSH ブラシ くし リファ プレゼント ギフト ツヤ ヘアアレンジ ヘアアレンジ 櫛 コンパクト ダメージ から
      まり ほぐし 小型 持ち運び IROIL2103 公式 カラー 入学 卒業 お祝い 新色 人気 ホワイトデー",
      genre: 100663,
      category: "美容・コスメ・香水",
      price: 2970,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00r20gc.tv4su3f7.g00r20gc.tv4svd07/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmtgec-beauty%2F5385720101%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmtgec-beauty%2Fi%2F10002009%2F",
      body: "友達から誕生日に貰ったけどめちゃめちゃ可愛い♡　愛用品です♡",
      evaluation: 5.0,
      getting_method: "gift",
      giver: "friend",
      gifted_event: "birthday",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[1].id
    },

    {
      code: "bali-indah:10126138",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/bali-indah/cabinet/201904/t27fs8216-700a.jpg?_ex=128x128",
      name: "日本全国 有名店 ラーメン 詰め合わせセット 8箱16食 ご当地 食べ比べ 味平 来来亭 桑名 青葉 一文字 山小屋 支那そばや しらかわ お歳暮 お年賀 プレゼント 贈り物 常温保存",
      genre: 110487,
      category: "食品",
      price: 5980,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00pnmjc.tv4suca7.g00pnmjc.tv4sv5ed/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fbali-indah%2Ft27fs8216%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fbali-indah%2Fi%2F10126138%2F",
      body: "比較的ハズレのない詰め合わせだった。星5は今後の為にとっておくが、現状一番満足度が高い。",
      evaluation: 4.0,
      getting_method: "self_purchase",
      giver: "no_giver",
      gifted_event: "no_date",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[2].id
    },
    {
      code: "f402052-iizuka:10001689",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/f402052-iizuka/cabinet/yoshiura/0028-a-614_s.jpg?_ex=128x128",
      name: "【ふるさと納税】「一風堂」とんこつラーメン 白丸・赤丸(各6食) 【ホットもやしソース付き!】 豚骨 豆板醤 唐辛子 辛味噌 博多 豚 有名店 タレ 家庭用 福岡【A-614】【1110レ
      ビューCP】",
      genre: 110487,
      category: "食品",
      price: 10000,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00sn2fc.tv4su4cf.g00sn2fc.tv4sv08b/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Ff402052-iizuka%2F10001689%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Ff402052-iizuka%2Fi%2F10001689%2F",
      body: "どうしても一風堂のラーメンが食べたくなり購入。店舗の味がよく再現された商品。買って満足している。",
      evaluation: 3.5,
      getting_method: "self_purchase",
      giver: "no_giver",
      gifted_event: "no_date",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[2].id
    },
    {
      code: "kanechuu:10000967",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/kanechuu/cabinet/01680263/imgrc0137737416.jpg?_ex=128x128",
      name: "ラーメン丼/どんぶり 元祖 赤巻三龍切立63丼 丈夫 直径19.4cm×高さ6.5cm 920cc(満水） 切立型 和食器 ラーメン鉢 美濃焼 ラーメン らーめん 色むらあり",
      genre: 566136,
      category: "キッチン用品・食器・調理器具",
      price: 950,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00r1bjc.tv4su2e2.g00r1bjc.tv4sv303/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fkanechuu%2F10000967%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fkanechuu%2Fi%2F10000967%2F",
      body: "休日になるとラーメンばかり食べている私を見かねて妻がプレゼントしてくれた。昔ながらのデザインがとても気に入っている。",
      evaluation: 5.0,
      getting_method: "gift",
      giver: "lover",
      gifted_event: "other_day",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "confirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[2].id
    },
    {
      code: "luire:10004549",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/luire/cabinet/plus03/mask-35_30cp.jpg?_ex=128x128",
      name: "【クーポンで973円(1点あたりの最安) MAX30%OFF】パック シートマスク フェイスマスク フェイスパック 美容マスク 化粧水 大容量 限定 ローズ ラベンダー ラン
      キング プレゼント ギフト [PLuS / プリュ プラセンタ モイスチュアマスク 35枚入 ] ZZ【プリュ公式】",
      genre: 503020,
      category: "美容・コスメ・香水",
      price: 1390,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00po0zc.tv4su150.g00po0zc.tv4sv9a0/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fluire%2Fpmm-yami%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fluire%2Fi%2F10004549%2F",
      body: "ゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミ",
      evaluation: 0.5,
      getting_method: "self_purchase",
      giver: "no_giver",
      gifted_event: "no_date",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "confirmed",
      is_disclose: "closed",
      end_user_id: end_users[3].id
    },
    {
      code: "luire:10004549",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/luire/cabinet/plus03/mask-35_30cp.jpg?_ex=128x128",
      name: "【クーポンで973円(1点あたりの最安) MAX30%OFF】パック シートマスク フェイスマスク フェイスパック 美容マスク 化粧水 大容量 限定 ローズ ラベンダー ラン
      キング プレゼント ギフト [PLuS / プリュ プラセンタ モイスチュアマスク 35枚入 ] ZZ【プリュ公式】",
      genre: 503020,
      category: "美容・コスメ・香水",
      price: 1390,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00po0zc.tv4su150.g00po0zc.tv4sv9a0/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fluire%2Fpmm-yami%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fluire%2Fi%2F10004549%2F",
      body: "ゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミゴミ",
      evaluation: 0.5,
      getting_method: "self_purchase",
      giver: "no_giver",
      gifted_event: "no_date",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "confirmed",
      is_disclose: "closed",
      end_user_id: end_users[3].id
    },
    {
      code: "masuyone:10000016",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/masuyone/cabinet/m1/bana2/hp18-2000off.jpg?_ex=128x128",
      name: "母の日 ギフト 早割 最安挑戦クーポンで12800円送料無料！最大3kg★選べるメガ盛 元祖カット済生ずわい蟹or生棒ポーションor爪下肩肉3kg[かに/カニ/かにしゃぶ/むき身/鍋/カニしゃぶ]父の日 お取り寄せ グルメ ギフト 福袋 プレゼント",
      genre: 110411,
      category: "食品",
      price: 14800,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00pmn5c.tv4su20a.g00pmn5c.tv4svbce/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmasuyone%2F130007%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmasuyone%2Fi%2F10000016%2F",
      body: "結婚祝いに親戚からいただきました。が、ウチは夫婦そろって蟹が食べられません。食べ物をプレゼントするなら事前に聞く、もしくは身近な人間に探りを入れてからして欲しかったと思うのは我儘でしょうか……。気持ちはうれしいのですが、、、",
      evaluation: 2.5,
      getting_method: "gift",
      giver: "relatives",
      gifted_event: "anniversary",
      is_anonymous: "anonymous",
      is_displayed: "display",
      is_checked: "unconfirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[6].id
    },
    {
      code: "low-ya:10007400",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/low-ya/cabinet/img4/zaisu/pnl_top_01.jpg?_ex=128x128",
      name: "座椅子 【 42段ギア搭載 ★ 1億円 座椅子 】 低反発 座いす リクライニング チェア チェアー 1人掛け 一人用 ソファー ソファ 座イス コンパクト 一人暮らし か
      わいい おしゃれ こたつ",
      genre: 215538,
      category: "インテリア・寝具・収納",
      price: 6990,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00pxdhc.tv4su50d.g00pxdhc.tv4sv2a3/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Flow-ya%2Fvg-pola%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Flow-ya%2Fi%2F10007400%2F",
      body: "一人暮らしを始めたばかりの頃に買いましたが、座り心地最高でとても気に入っています！新しく新調しようかな、、、",
      evaluation: 5.0,
      getting_method: "self_purchase",
      giver: "no_giver",
      gifted_event: "no_date",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "unconfirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[7].id
    },
    {
      code: "f192023-fujiyoshida:10001022",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/f192023-fujiyoshida/cabinet/08146249/08146250/f125-150-151-s-r.jpg?_ex=128x128",
      name: "【ふるさと納税】 ネックレス ダイヤ ダイヤモンド スクエア ペンダント アクセサリー 18金 イエローゴールド ホワイトゴールド K18 宝石 ジュエリー プレゼント レディース ギ
      フト 女性 MJ098 MJ099 4月 誕生石 誕生日 記念日 ホワイトデー 母の日 【品質保証書付き】",
      genre: 111029,
      category: "ジュエリー・アクセサリー",
      price: 70000,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00srlwc.tv4su01d.g00srlwc.tv4sv4d4/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Ff192023-fujiyoshida%2Fraku918%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Ff192023-fujiyoshida%2Fi%2F10001022%2F",
      body: "デザインに一目惚れして誕生日に購入しました！私が四月生まれというということもあり、宝石にも満足してます。可愛い！",
      evaluation: 5.0,
      getting_method: "self_purchase",
      giver: "no_giver",
      gifted_event: "no_date",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "unconfirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[7].id
    },
    {
      code: "motebeauty:10000472",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/motebeauty/cabinet/i/3/675.jpg?_ex=128x128",
      name: "美顔器 エビス ツインエレナイザープレミアム イオン導入 高周波 RF イオンクレンジング クール HOT 超音波美顔器 ランキング1位 リフトアップ シミ 毛穴 たるみ ほうれい線 プ
      レゼント 人気【ebis 正規販売店】・送料無料・海外使用可能・日本製",
      genre: 503170,
      category: "美容・コスメ・香水",
      price: 29700,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00qjhic.tv4su3cd.g00qjhic.tv4sva07/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmotebeauty%2Fsa-ebi-fa-u-00007%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmotebeauty%2Fi%2F10000472%2F",
      body: "美顔器が前々から欲しかったのですが、それを聞いていた友人が誕生日にくれました！まだ数回しか使ってないですが、肌の調子もいい感じです。",
      evaluation: 5.0,
      getting_method: "gift",
      giver: "friend",
      gifted_event: "birthday",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "unconfirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[7].id
    },
    {
      code: "luire:10004549",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/luire/cabinet/plus03/mask-35_30cp.jpg?_ex=128x128",
      name:
        "【クーポンで973円(1点あたりの最安) MAX30%OFF】パック シートマスク フェイスマスク フェイスパック 美容マスク 化粧水 大容量 限定 ローズ ラベンダー ランキング プレゼント ギフト [PLuS / プリュ プラセンタ モイスチュアマスク 35枚入 ] ZZ【プリュ公式】",
      genre: 503020,
      category: "美容・コスメ・香水",
      price: 1390,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00po0zc.tv4su150.g00po0zc.tv4sv9a0/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fluire%2Fpmm-yami%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fluire%2Fi%2F10004549%2F",
      body: "余分に購入したからと言って友人に貰いました。私の肌質には合わず肌が真っ赤になりました。タダで貰ったかつ、ご厚意での贈り物だとわかっているのですが、こういったスキンケア商品は人によって相性があるので、プレゼントする際は注意が必要だと思います。",
      evaluation: 1.0,
      getting_method: "gift",
      giver: "friend",
      gifted_event: "other_day",
      is_anonymous: "anonymous",
      is_displayed: "non_display",
      is_checked: "unconfirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[8].id
    },
    {
      code: "motebeauty:10000472",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/motebeauty/cabinet/i/3/675.jpg?_ex=128x128",
      name: "美顔器 エビス ツインエレナイザープレミアム イオン導入 高周波 RF イオンクレンジング クール HOT 超音波美顔器 ランキング1位 リフトアップ シミ 毛穴 たるみ ほうれい線 プレゼント 人気【ebis 正規販売店】・送料無料・海外使用可能・日本製",
      genre: 503170,
      category: "美容・コスメ・香水",
      price: 29700,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00qjhic.tv4su3cd.g00qjhic.tv4sva07/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmotebeauty%2Fsa-ebi-fa-u-00007%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmotebeauty%2Fi%2F10000472%2F",
       body: "娘から母の日ギフトとして貰いました。使い始めて3か月、少しほうれい線が薄くなったような気がします。娘と一緒に出掛けたいのでまだまだ美しく若く居れるよう努力します( *´
      艸｀)",
      evaluation: 5.0,
      getting_method: "gift",
      giver: "my_child",
      gifted_event: "mother_day",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "unconfirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[8].id
    },
    {
      code: "rl-waffle:10000107",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/rl-waffle/cabinet/2021-08m/600_0-set-kuru01_01a.jpg?_ex=128x128",
      name: "送料無料 お取り寄せワッフル&くるくるワッフル スイーツ ギフト | 母の日 早割 ホワイトデー お返し ワッフル 出産内祝い 洋菓子 内祝い 焼き菓子 お取り寄せスイーツ お菓子 誕生日 お礼 詰め合わせ ロールケーキ セット 退職 職場 手土産 産休 プレゼント 食べ物 入学祝い",
      genre: 502908,
      category: "スイーツ・お菓子",
      price: 3700,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00pq4wc.tv4sue87.g00pq4wc.tv4sv90a/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Frl-waffle%2F0-set-kobe%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Frl-waffle%2Fi%2F10000107%2F",
      body: "ホワイトデーのお返しとして同僚から貰いましたが、これがまた美味しい！\r\n後日また食べたくなり個人で購入しました。良い商品に出会わせてくれた同僚に感謝です。",
      evaluation: 3.0,
      getting_method: "gift",
      giver: "coworker",
      gifted_event: "white_day",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "unconfirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[8].id
    }
  ]
)