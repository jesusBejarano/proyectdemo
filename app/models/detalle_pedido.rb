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

class DetallePedido < ActiveRecord::Base
  belongs_to :pedido
end
