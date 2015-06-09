# == Schema Information
#
# Table name: programacion_semanals
#
#  id          :integer          not null, primary key
#  local_id    :integer
#  periodo_id  :integer
#  dia         :date
#  plato_id    :integer
#  stock       :integer
#  TipoMenu_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class ProgramacionSemanalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
