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

require 'spec_helper'

describe Member do
  pending "add some examples to (or delete) #{__FILE__}"
end
