class Response < ApplicationRecord

  validates :age, {presence: true}
  validates :gender, {presence: true}
  validates :internet_protocol_address, {presence: true}
  validates :present_genre, {presence: true}
  validates :giver, {presence: true}
  validates :gifted_event, {presence: true}

  enum gender: { male: 0, female: 1, not_selected: 2 }
  enum age: { kid:0, teens: 1, twenties: 2, thirties: 3, forties: 4, fifties: 5, sixties: 6, seventies: 7 }
  enum giver: { forgot_giver: 0, friend: 1, lover: 2, parents: 3, my_child: 4, sibling: 5, relatives: 6,
                                      boss: 7, subordinate: 8, coworker: 9, business_people: 10, acquaintance: 11, other_people: 12 }
  enum gifted_event: { forgot_date: 0, birthday: 1, christmas: 2, father_day: 3, mother_day: 4, anniversary: 5, valentine: 6, white_day: 7,
                           birthday_20th: 8, celebrate_job: 9, wedding_gift: 10, baby_gift: 11, housewarming: 12, birthday_60th: 13, other_day: 14 }
  enum present_genre: { flower: 0, letter: 1, jewelry: 2, cosmetic: 3, branded_goods: 4, fashion: 5, large_appliance: 6, small_appliance: 7, cash: 8,
                           foods: 9, sweets: 10, alcohol: 11, interior: 12, necessities: 13, hobby: 14, baby_supplies: 15, pet_supplies: 16,
                                                                                    vehicle: 17, house: 18, catalog_gift: 19, travel: 20, other_present: 21 }

end