class Family < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :members
  attr_accessible :name
  
  validates :name, presence: true, length: {minimum: 3}, uniqueness: {case_sensitive: false}
  
end
