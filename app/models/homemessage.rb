class Homemessage < ActiveRecord::Base
  attr_accessible :name, :message, :approved
  validates :name, presence: true, length: {minimum: 3}
  validates :message, presence: true, length: {minimum: 10, maximum: 200}
end
