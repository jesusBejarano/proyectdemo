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

class Periodo < ActiveRecord::Base
end
