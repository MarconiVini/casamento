# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  family_id  :integer
#  confirmado :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Member < ActiveRecord::Base

  
  belongs_to :family
  attr_accessible :confirmado, :family_id, :name
  
  validates :name, presence: true, length: {minimum: 3}, uniqueness: {case_sensitive: false}
  
  def parametrize_name
    name = self.name
    name.gsub!(" ", "-").downcase
  end
  
end
