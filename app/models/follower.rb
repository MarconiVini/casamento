class Follower < ActiveRecord::Base
  attr_accessible :name, :family_id, :description
  validates :name, presence: true, length: {minimum: 3}, uniqueness: {case_sensitive: false}
  validates :description, presence: true
end
