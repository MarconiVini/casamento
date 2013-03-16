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

require 'spec_helper'

describe Homemessage do
  pending "add some examples to (or delete) #{__FILE__}"
end
