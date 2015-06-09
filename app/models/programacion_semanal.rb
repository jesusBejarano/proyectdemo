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

class ProgramacionSemanal < ActiveRecord::Base
  belongs_to :local
  belongs_to :periodo
  belongs_to :plato
  belongs_to :TipoMenu
end
