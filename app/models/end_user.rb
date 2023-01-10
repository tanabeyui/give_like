class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :want_items, dependent: :destroy

  enum gender: { male: 0, female: 1, not_selected: 2 }



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
