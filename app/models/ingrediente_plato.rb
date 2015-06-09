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

class IngredientePlato < ActiveRecord::Base
  belongs_to :plato
  belongs_to :ingrediente
end
