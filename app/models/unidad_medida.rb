# == Schema Information
#
# Table name: unidad_medidas
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  abreviatura :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class UnidadMedida < ActiveRecord::Base
end
