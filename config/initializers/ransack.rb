Ransack.configure do |config|
  # 生年月日を年齢として検索する。
  # xx歳未満
  config.add_predicate 'to_age_lt',
                      arel_predicate: 'gteq',
                      formatter: -> (v) { (v.years.ago + 1.day).to_date },
                      type: :integer,
                      compounds: false
  # xx歳以下
  config.add_predicate 'to_age_lteq',
                      arel_predicate: 'gteq',
                      formatter: -> (v) { ((v + 1).years.ago + 1.day).to_date },
                      type: :integer,
                      compounds: false
  # xx歳以上
  config.add_predicate 'to_age_gteq',
                      arel_predicate: 'lteq',
                      formatter: -> (v) { v.years.ago.to_date },
                      type: :integer,
                      compounds: false
  # xx歳超過
  config.add_predicate 'to_age_gt',
                      arel_predicate: 'lteq',
                      formatter: -> (v) { (v + 1).years.ago.to_date },
                      type: :integer,
                      compounds: false

  config.add_predicate 'lteq_end_of_day',  #設定するpredicateに名前をつける
                      arel_predicate: 'lteq',  #使いたいpredicate
                      formatter: proc { |v| v.end_of_day } # 受け取った値をどうフォーマットするか

end