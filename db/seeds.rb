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
    {email: 'fff@test.com', screen_name: 'sbunsss', name: 'nanashi', password: '060530', birth_day: '1960-11-11', gender: 'male', is_deleted: 'unsubscribe', internet_protocol_address: '14.13.9.97'},
    {email: 'ggg@test.com', screen_name: 'matsudasan', name: 'KentaMatsuda', password: '060530', birth_day: '1970-09-12', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97'},
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
      code: "rakuten24:10315882",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/rakuten24/cabinet/134/10134.jpg?_ex=128x128",
      name: "猫砂 ライオン ペットキレイニオイをとる砂(5L*4コセット)【d2rec】【dalc_catoilet】【ニオイをとる砂】",
      genre: 204174,
      category: "ペット・ペットグッズ",
      price: 3020,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00r136c.tv4subc5.g00r136c.tv4sv686/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Frakuten24%2Fe390373h%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Frakuten24%2Fi%2F10315882%2F",
      body: "友人に譲ってもらいました。私が普段購入している物よりも消臭性が優れており、感動です！今度からこちらの猫砂を購入しようと思います。",
      evaluation: 4.0,
      getting_method: "gift",
      giver: "friend",
      gifted_event: "other_day",
      is_anonymous: "onymous",
      is_displayed: "display",
      is_checked: "unconfirmed",
      is_disclose: "disclosed",
      end_user_id: end_users[8].id
    },
    {
      code: "long-lifeservice:10000032",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/long-lifeservice/cabinet/05814294/05923170/ls0006-1.jpg?_ex=128x128",
      name: "即納 ネコハンモック 猫窓 ハンモック ウィンドウベッド ペットベッド ペットグッズ 吸盤タイプ 猫 ハンモック 窓 ベッド 猫はんもっく窓用 ネコ ハンモック キャット モック 日向ぼっこ ネコハンモック 四季使える テラス 吸盤 窓 窓台日光に浴びて 吸盤ハンモック 送料無料",
      genre: 206287,
      category: "ペット・ペットグッズ",
      price: 2760,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00szsuc.tv4su5fa.g00szsuc.tv4sva47/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Flong-lifeservice%2Fls0006-1%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Flong-lifeservice%2Fi%2F10000032%2F",
      body: "初めてこのようなペットグッズを購入したのですが、とても気に入ってくれたようで、日中はずっとこのハンモックの上で日向ぼっこしています!(^^)!　愛猫の可愛
      い姿が見れて満足です。",
      evaluation: 4.0,
      getting_method: "self_purchase",
      giver: "no_giver",
      gifted_event: "no_date",
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
      evaluation: 4.0,
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

Favorite.create!(
  [
    {
      code: "auc-de-mer:10000052",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/auc-de-mer/cabinet/th1/kunskset_th1.jpg?_ex=128x128",
      name: "＼コスパ1位獲得／ 【おとなの週末 掲載】 燻製職人セット 5種5品 送料無料 東北の極旨素材を冷燻製法で生食感 酒の肴 おつまみ 酒のつまみ 誕生日 父の日 ギフト プレゼント 鯖のスモーク スモークサーモン サバ 真鯛 生ハム 鯖 鶏 帆立 珍味 グルメ お取り寄せ",
      genre: 410732,
      category: "食品",
      price: 4680,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00qgsnc.tv4su664.g00qgsnc.tv4sv834/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fauc-de-mer%2F005-005%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fauc-de-mer%2Fi%2F10000052%2F",
      end_user_id: end_users[0].id
    },
    {
      code: "echigo:10002642",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/echigo/cabinet/item/item10002642/imgrc0089252088.jpg?_ex=128x128",
      name: "日本酒 飲み比べ セット 久保田 越乃寒梅 八海山 当店限定酒を飲み比べ 1800ml 5本 (46弾) 送料無料 新潟 お酒 日本酒 お花見 父の日 ギフト プレゼント お土産 楽天上半期ランキング2022 日本酒・焼酎 ランクイン",
      genre: 567223,
      category: "日本酒・焼酎",
      price: 10980,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00paqic.tv4sua9f.g00paqic.tv4sv060/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fechigo%2F10002642%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fechigo%2Fi%2F10002642%2F",
      end_user_id: end_users[0].id
    },
    {
      code: "shunsake:10000370",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/shunsake/cabinet/new/201810_syouhingazou/202107kiwami_wb.jpg?_ex=128x128",
      name: "【年間ランキング入賞】 送料無料 純米大吟醸 飲み比べ720mlペア セット 会津ほまれ 公式直営店 お酒 日本酒 地酒 喜多方 ほまれ酒造 母の日 父の日 ギフト プ レゼント お祝い 内祝い 誕生日 退職祝い 蔵元直送 グルメ 還暦 ホワイトデー 春 花見 桜",
      genre: 567223,
      category: "日本酒・焼酎",
      price: 3750,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00q3czc.tv4suf68.g00q3czc.tv4svce5/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fshunsake%2Fkiwami_wb720_set%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fshunsake%2Fi%2F10000370%2F",
      end_user_id: end_users[0].id
    },
    {
      code: "nail-koubouu:10006458",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/nail-koubouu/cabinet/20202/18-001.jpg?_ex=128x128",
      name: "ジェルネイル クリアジェル　大容量15g 18種類から選べる ベースジェル トップジェル マットトップ ビジュージェル ネイル用品 トップコート ベース ビルダージェル クリア オールインワン ジェル 長さだし トップ 長さ出し ネイルジェル ネイル工房",
      genre: 563786,
      category: "美容・コスメ・香水",
      price: 1000,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00q7poc.tv4su342.g00q7poc.tv4sv7bd/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fnail-koubouu%2F20160618-001%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fnail-koubouu%2Fi%2F10006458%2F",
      end_user_id: end_users[1].id
    },
    {
      code: "nail-koubouu:10013445",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/nail-koubouu/cabinet/202204/20220817-860.jpg?_ex=128x128",
      name: "マグネットネイル 偏光マグネット カラーマグネット マグネット キャッツアイジェル 磁石 偏光パール カラージェル ジェルネイル カラー ポリッシュ ネイルジェル アートジェル ジェルネイル用品 爪 カラージェルネイル ジェルネイルアート ネイル工房 にわちゃん",
      genre: 563786,
      category: "美容・コスメ・香水",
      price: 777,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00q7poc.tv4su342.g00q7poc.tv4sv7bd/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fnail-koubouu%2Fzirconia-jewely2022-339%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fnail-koubouu%2Fi%2F10013445%2F",
      end_user_id: end_users[1].id
    },
    {
      code: "nail-koubouu:10012099",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/nail-koubouu/cabinet/202204/20220817-420.jpg?_ex=128x128",
      name: "【全品半額coupon配布中】マグネットネイル 全20色 ジェルネイル マグネットネイル カラージェル キャッツアイ 磁石 シルバー ラメ | カラー ポリッシュ ネイルジェル アートジェル ジェルネイル用品 爪 カラージェルネイル ジェルネイルアート ネイル工房 にわちゃん",
      genre: 563786,
      category: "美容・コスメ・香水",
      price: 375,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00q7poc.tv4su342.g00q7poc.tv4sv7bd/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fnail-koubouu%2Fzirconia-jewely2020-428%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fnail-koubouu%2Fi%2F10012099%2F",
      end_user_id: end_users[1].id
    },
    {
      code: "kizamu:10008009",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/kizamu/cabinet/00840226/keirou_2010/09768996/md_mag-046.jpg?_ex=128x128",
      name:
        "マグカップ 名入れ 猫グッズ プレゼント 【 しのぎの ネコ マグ 】 誕生日プレゼント 女友達 ギフト 20代 猫好き 誕生日 母親 50代 60代 名前入り おしゃれ 退職祝い 女性 30代 40代 母 妻 彼女 かわいい 猫 雑貨 陶器 名入り 記念日 退職 祝い 名 名前 入り 入れ 母の日",
      genre: 566157,
      category: "キッチン用品・食器・調理器具",
      price: 3980,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00qe6fc.tv4su908.g00qe6fc.tv4svef9/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fkizamu%2Fmag-046%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fkizamu%2Fi%2F10008009%2F",
      end_user_id: end_users[8].id
    }
  ]
)

WantItem.create!(
  [
    {
      code: "shuuemura:10000018",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/shuuemura/cabinet/images/packshots/shu30001jp-v9.jpg?_ex=128x128",
      name: "【公式・楽天限定】アルティム8∞ クレンジング オイル 450mL ベストセラーキット / メイク落とし 化粧落とし リムーバー しっとり ダブル洗顔不要 / shu uemura シュウウエムラ 正規品 送料無料 / シュウ 公式 公式ショップ",
      genre: 405061,
      category: "美容・コスメ・香水",
      price: 13750,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00tl4nc.tv4sue4d.g00tl4nc.tv4sv75d/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fshuuemura%2Fshu30001jp%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fshuuemura%2Fi%2F10000018%2F",
      end_user_id: end_users[1].id
    },
    {
      code: "granbeautyon-line:10000186",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/granbeautyon-line/cabinet/08719271/09761623/imgrc0129561625.jpg?_ex=128x128",
      name: "タイムセール3/15まで《さらに3,000円OFF+合計P19倍》ディビュース 正規品保証 正規品 DEBEAUS ディビュース クッションファンデーション 韓国コスメ 本体15g＋レフィル付き パフ2つ入り スキンケア　あす楽",
      genre: 568317,
      category: "美容・コスメ・香水",
      price: 9800,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00tg13c.tv4su866.g00tg13c.tv4sv737/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fgranbeautyon-line%2F10000186%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fgranbeautyon-line%2Fi%2F10000186%2F",
      end_user_id: end_users[1].id
    },
    {
      code: "tbsshopping:10005329",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/tbsshopping/cabinet/a/97/p2108397_336749_00.jpg?_ex=128x128",
      name: "【3月17日まで特別価格】 ／ MEミニョン／美顔器 ／ 顔 フェイス ローラー 美顔器 美顔ローラー 美容ローラー EMS LED RF つまみあげ エステ 美肌 【TBSショッ
      ピング】",
      genre: 503041,
      category: "美容・コスメ・香水",
      price: 9970,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00s9vhc.tv4su979.g00s9vhc.tv4sv531/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Ftbsshopping%2F094067848%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Ftbsshopping%2Fi%2F10005329%2F",
      end_user_id: end_users[1].id
    },
    {
      code: "wishsun:10000101",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/wishsun/cabinet/biiino/item/main-image/20220118163648_1.jpg?_ex=128x128",
      name: "【楽天1位】ペットウォーターボトル 犬グッズ ペット用品 ペット 水 水飲み ボトル 犬 ペットボトル ペット給水器 犬 グッズ 散歩 外出 ドライブ 旅行 漏れ防止 ワンタッチ 贈り物",
      genre: 215348,
      category: "ペット・ペットグッズ",
      price: 1590,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00thrkc.tv4suf57.g00thrkc.tv4svac6/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fwishsun%2Fpet_water_bottle%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fwishsun%2Fi%2F10000101%2F",
      end_user_id: end_users[6].id
    },
    {
      code: "oriba:10000010",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/oriba/cabinet/04341152/imgrc0092888599.jpg?_ex=128x128",
      name: "＼愛犬のフンを落とさずキャッチ！お散歩パックも使える！／Oneキャッチ　mini（ミニ）　犬　ペット用品　犬用　フン取り　フンキャッチャー　お出かけ　お散歩グッズ　散歩　日本製　送料無料",
      genre: 215350,
      category: "ペット・ペットグッズ",
      price: 2250,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00s482c.tv4su5db.g00s482c.tv4svfbc/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Foriba%2F10000007%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Foriba%2Fi%2F10000010%2F",
      end_user_id: end_users[6].id
    },
    {
      code: "wall:10019492",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/wall/cabinet/wp/kger050_00.jpg?_ex=128x128",
      name: "壁紙 のり付き おしゃれ クロス 輸入壁紙 海外 紙 店舗 内装 撮影 ドイツ製 北欧 花柄 幻想 不思議 自然 [Shades/シェード]8-962 diy 補修 店舗 内装 リビング トイレ 玄関 リフォーム 撮影用 ウォールペーパー wallpaper CSZ",
      genre: 400766,
      category: "インテリア・寝具・収納",
      price: 13244,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00s3e6c.tv4su55b.g00s3e6c.tv4sv06f/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fwall%2Fkger050%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fwall%2Fi%2F10019492%2F",
      end_user_id: end_users[7].id
    },
    {
      code: "susumu:10000003",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/susumu/cabinet/smartphonecase/imgrc0089308518.jpg?_ex=128x128",
      name:
        "iPhone SE (第3世代) ケース iPhone14 iPhone14 Plus Pro iPhone13Pro iPhone12/12Pro 12mini SE(第2世代) iPhone11 11Pro X/XS XR 8/7 SE スマホケース 手帳型 アイフォン12/12Pro アイフォン11 アイフォン11Pro カード収納 スタンド機能 ストラップ付き 花柄",
      genre: 560271,
      category: "スマートフォン・タブレット",
      price: 1580,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00syt2c.tv4su0e0.g00syt2c.tv4svabb/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsusumu%2Fs144%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fsusumu%2Fi%2F10000003%2F",
      end_user_id: end_users[7].id
    },
    {
      code: "osharewalker:10020136",
      image: "https://thumbnail.image.rakuten.co.jp/@0_mall/osharewalker/cabinet/lady138/tdn0065_1.jpg?_ex=128x128",
      name: "『n'OrLABELフラワージャカードニット』[ニット レディース トップス 長袖 ジャガード 花柄 オリジナル 大きめ 綿100％ コットン パフスリーブ パステル くすみカラー ゆったり]【メール便不可】",
      genre: 566028,
      category: "レディースファッション",
      price: 4900,
      url:
        "https://hb.afl.rakuten.co.jp/hgc/g00qcb4c.tv4su3f1.g00qcb4c.tv4svbad/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fosharewalker%2Ftdn0065%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fosharewalker%2Fi%2F10020136%2F",
      end_user_id: end_users[7].id
    }
  ]
)
