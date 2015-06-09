# == Schema Information
#
# Table name: detalle_menus
#
#  id               :integer          not null, primary key
#  DetallePedido_id :integer
#  plato_id         :integer
#  TipoMenu_id      :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class DetalleMenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
