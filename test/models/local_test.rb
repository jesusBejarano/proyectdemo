# == Schema Information
#
# Table name: locals
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  direccion  :string(255)
#  telefono   :string(255)
#  ubigeo_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class LocalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
