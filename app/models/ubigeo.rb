# == Schema Information
#
# Table name: ubigeos
#
#  id              :integer          not null, primary key
#  departamento_id :integer
#  provincia_id    :integer
#  distrito_id     :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Ubigeo < ActiveRecord::Base
    has_many :departamento
    has_many :provincia
    has_many :distrito
    
end
