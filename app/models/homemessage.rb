# == Schema Information
#
# Table name: homemessages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  message    :string(255)
#  approved   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Homemessage < ActiveRecord::Base
  attr_accessible :name, :message, :approved
  validates :name, presence: true, length: {minimum: 3}, allow_blank: true
  validates :message, presence: true, length: {minimum: 10, maximum: 200}, allow_blank: true
end
