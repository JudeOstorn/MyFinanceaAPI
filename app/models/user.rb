class User < ApplicationRecord
  has_many :money_operations

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
