# == Schema Information
#
# Table name: ingredientes
#
#  id              :integer          not null, primary key
#  nombre          :string(255)
#  UnidadMedida_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class IngredienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
