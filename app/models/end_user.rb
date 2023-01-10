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
    else age = 200000 < 299999
      p "20代"
    elsif age = 300000 < 399999
      p "30代"
    elsif age = 400000 < 499999
      p "40代"
    elsif age = 500000 < 599999
      p "50代"
    elsif age = 600000 < 699999
      p "60代"
    else age > 700000
      p "70代"
    end
  end
end
