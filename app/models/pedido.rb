# == Schema Information
#
# Table name: pedidos
#
#  id             :integer          not null, primary key
#  local_id       :integer
#  periodo_id     :integer
#  dia            :date
#  user_id        :integer
#  CantidadPagar  :integer
#  direcciones_id :integer
#  estado_id      :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Pedido < ActiveRecord::Base
  belongs_to :local
  belongs_to :periodo
  belongs_to :user
  belongs_to :direcciones
  belongs_to :estado
end
