class Review < ApplicationRecord

  belongs_to :end_user

  validates :code, {presence: true}
  validates :name, {presence: true}
  validates :url, {presence: true}
  validates :category, {presence: true}
  validates :price, {presence: true}
  validates :image, {presence: true}
  validates :getting_method, {presence: true}
  validates :is_anonymous, {presence: true}
  validates :evaluation, {presence: true}
  validates :category, {presence: true}
  validates :body, {presence: true}
  validates :giver, {presence: true}
  validates :gifted_event, {presence: true}
  validates :is_displayed, {presence: true}
  validates :is_checked, {presence: true}
  validates :is_disclose, {presence: true}

  enum getting_method: { self_purchase: 0, gift: 1 }
  enum giver: { no_giver: 0, friend: 1, lover: 2, parents: 3, my_child: 4, sibling: 5, relatives: 6,
                                      boss: 7, subordinate: 8, coworker: 9, business_people: 10, acquaintance: 11, other_people: 12 }
  enum gifted_event: { no_date: 0, birthday: 1, christmas: 2, father_day: 3, mother_day: 4, anniversary: 5, valentine: 6, white_day: 7,
                           birthday_20th: 8, celebrate_job: 9, wedding_gift: 10, baby_gift: 11, housewarming: 12, birthday_60th: 13, other_day: 14 }

  enum is_anonymous: { anonymous: true, onymous: false }
  enum is_displayed: { display: true, non_display: false }

  enum is_checked: { confirmed: true, unconfirmed: false }
  enum is_disclose: { disclosed: true, closed: false }

end
