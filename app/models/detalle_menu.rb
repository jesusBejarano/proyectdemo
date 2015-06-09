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

class DetalleMenu < ActiveRecord::Base
  belongs_to :DetallePedido
  belongs_to :plato
  belongs_to :TipoMenu
end
