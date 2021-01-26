class Mailcontent < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 6,maximum: 50} 
  validates :name, presence: true,   length: {minimum: 3,maximum: 50} 
  validates :phone, presence: true,   length: {minimum: 6,maximum: 50} 
end
