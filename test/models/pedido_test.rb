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

require 'test_helper'

class PedidoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
