# == Schema Information
#
# Table name: admin_sessions
#
#  id              :integer          not null, primary key
#  id_session_hash :string(255)
#  id_admin        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class AdminSession < ActiveRecord::Base
  attr_accessible :id_session_hash, :id_admin
  
  validates :id_session_hash, presence: true
  validates :id_admin, presence: true  
  
end
