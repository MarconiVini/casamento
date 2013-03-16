# == Schema Information
#
# Table name: followers
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  family_id   :integer
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Follower < ActiveRecord::Base
  attr_accessible :name, :family_id, :description
  validates :name, presence: true, length: {minimum: 3}, uniqueness: {case_sensitive: false}
  validates :description, presence: true
end
