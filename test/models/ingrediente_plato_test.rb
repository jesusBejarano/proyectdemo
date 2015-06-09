# == Schema Information
#
# Table name: ingrediente_platos
#
#  id             :integer          not null, primary key
#  plato_id       :integer
#  ingrediente_id :integer
#  cantidad       :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class IngredientePlatoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
