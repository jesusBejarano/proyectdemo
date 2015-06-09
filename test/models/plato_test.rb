# == Schema Information
#
# Table name: platos
#
#  id           :integer          not null, primary key
#  nombre       :string(255)
#  precio       :integer
#  TipoPlato_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class PlatoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
