# == Schema Information
#
# Table name: periodos
#
#  id           :integer          not null, primary key
#  nombre       :string(255)
#  FechaInicial :date
#  FechaFinal   :date
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class PeriodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
