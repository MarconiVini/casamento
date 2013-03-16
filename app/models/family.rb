# == Schema Information
#
# Table name: families
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Family < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :members
  attr_accessible :name
  
  validates :name, presence: true, length: {minimum: 3}, uniqueness: {case_sensitive: false}
  
end
