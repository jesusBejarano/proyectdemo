# == Schema Information
#
# Table name: direcciones
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  nombre     :string(255)
#  ubigeo_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class DireccioneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
