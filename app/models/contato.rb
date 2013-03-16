#encoding: utf-8
# == Schema Information
#
# Table name: contatos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  text       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contato < ActiveRecord::Base
  attr_accessible :email, :text, :name

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: {minimum: 3}, allow_blank: true
  validates :text, presence: {message: "não pode ficar em branco"}, allow_blank: true
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, allow_blank: true
  
end
