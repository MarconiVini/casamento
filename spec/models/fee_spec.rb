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

require 'spec_helper'

describe Fee do
  pending "add some examples to (or delete) #{__FILE__}"
end
