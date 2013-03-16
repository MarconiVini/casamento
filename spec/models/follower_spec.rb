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

require 'spec_helper'

describe Follower do
  pending "add some examples to (or delete) #{__FILE__}"
end
