class User < ApplicationRecord
  has_many :activities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable#, :confirmable
         has_one_attached :image

  def full_name
    return "#{first_name} #{last_name}" if first_name || last_name
    "Anonymous"
  end
end
