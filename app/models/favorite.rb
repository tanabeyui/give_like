class Favorite < ApplicationRecord

  belongs_to :end_user

  validates :end_user_id, {presence: true}
  validates :code, {presence: true}
  validates :name, {presence: true}
  validates :genre, {presence: true}
  validates :url, {presence: true}
  validates :category, {presence: true}
  validates :price, {presence: true}
  validates :image, {presence: true}
  validates :category, {presence: true}

end
