#encoding: utf-8
class Contato < ActiveRecord::Base
  attr_accessible :email, :text, :name

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: {minimum: 3}, allow_blank: true
  validates :text, presence: {message: "não pode ficar em branco"}, allow_blank: true
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, allow_blank: true
  
end
