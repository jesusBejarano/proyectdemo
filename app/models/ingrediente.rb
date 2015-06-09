# == Schema Information
#
# Table name: ingredientes
#
#  id              :integer          not null, primary key
#  nombre          :string(255)
#  UnidadMedida_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Ingrediente < ActiveRecord::Base
  belongs_to :UnidadMedida
end
