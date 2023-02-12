class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:screen_name]

  validates :screen_name, presence: true, uniqueness: true

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :want_items, dependent: :destroy

  enum gender: { male: 0, female: 1, not_selected: 2 }
  enum is_deleted: { unsubscribe: true, member: false }

  has_one_attached :profile_image

  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.png')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/png')
    end
    profile_image.variant(resize: "#{width} x #{height}!").processed
  end

  def era
    age = (Date.today.strftime("%Y%m%d").to_i - self.birth_day.strftime('%Y%m%d').to_i) / 10000
    if age >= 70
      p "70代以上"
    elsif age >= 60
      p "60代"
    elsif age >= 50
      p "50代"
    elsif age >= 40
      p "50代"
    elsif age >= 30
      p "30代"
    elsif age >= 20
      p "20代"
    else
      p "10代"
    end
  end
end
