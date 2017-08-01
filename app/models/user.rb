class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :fullname, presence: true, length: { minimum: 6, maximum: 50 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
