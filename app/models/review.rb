class Review < ApplicationRecord
  belongs_to :end_user

  enum getting_method: { self_purchase: 0, gift: 1 }
  enum giver: { friend: 0, lover: 1, parents: 2, my_child: 3, sibling: 4, relatives: 5,
                                      boss: 6, subordinate: 7, coworker: 8, business_people: 9, acquaintance: 10, other_people: 11 }
  enum gifted_event: { birthday: 0, christmas: 1, father_day: 2, mother_day: 3, anniversary: 4, valentine: 5, white_day: 6, 
                           birthday_20th: 7, celebrate_job: 8, wedding_gift: 9, baby_gift: 10, housewarming: 11, birthday_60th: 12, other_day: 13 }
                           
  enum is_anonymous: { anonymous: true, onymous: false }
  enum is_displayed: { display: true, non_display: false }
  enum is_checked: { confirmed: true, unconfirmed: false }
  enum is_disclose: { disclosed: true, closed: false }
end
