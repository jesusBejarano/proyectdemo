# == Schema Information
#
# Table name: detalle_pedidos
#
#  id             :integer          not null, primary key
#  pedido_id      :integer
#  NombreProducto :string(255)
#  cantidad       :integer
#  PrecioParcial  :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class DetallePedidoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
