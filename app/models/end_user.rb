class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :want_items, dependent: :destroy

  enum gender: { male: 0, female: 1, not_selected: 2 }

  has_one_attached :profile_image

  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [width, height]).processed
  end

  def era
    age = (Date.today.strftime("%Y%m%d").to_i - self.birth_day.strftime('%Y%m%d').to_i)
    if age < 199999
      p "10代"
    elsif age >= 700000
      p "70代以上"
    elsif age >= 600000
      p "60代"
    elsif age >= 500000
      p "50代"
    elsif age >= 400000
      p "50代"
    elsif age >= 300000
      p "30代"
    else age >= 200000
      p "20代"
    end
  end
end
