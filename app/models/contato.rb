class Contato < ActiveRecord::Base
  attr_accessible :email, :text, :name
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, presence: true, length: {minimum: 3}
  validates :text, presence: true  
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
end
