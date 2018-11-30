class User < ApplicationRecord

  has_many :messages
  has_many :chatrooms, through: :messages
  validates :first_name, presence: true, uniqueness: true

end
