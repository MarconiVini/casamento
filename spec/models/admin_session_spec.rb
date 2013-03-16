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

require 'spec_helper'

describe AdminSession do
  pending "add some examples to (or delete) #{__FILE__}"
end
