# == Schema Information
#
# Table name: fees
#
#  id              :integer          not null, primary key
#  value           :integer
#  outros          :string(255)
#  name            :string(255)
#  email           :string(255)
#  message         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  confirm_deposit :boolean
#

class Fee < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :message, presence: true
  validates :value, presence: true
  
  def self.total_funds
    u = Fee.find(:all, :conditions => ["confirm_deposit = ?", true])
    total = 0
    u.each do |funds|
      total += funds.value
    end
    return total
  end
  
  
end
