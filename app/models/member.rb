class Member < ActiveRecord::Base

  
  belongs_to :family
  attr_accessible :confirmado, :family_id, :name
  
  validates :name, presence: true, length: {minimum: 3}, uniqueness: {case_sensitive: false}
  
  def parametrize_name
    name = self.name
    name.gsub!(" ", "-").downcase
  end
  
end
