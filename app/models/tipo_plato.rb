# == Schema Information
#
# Table name: tipo_platos
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TipoPlato < ActiveRecord::Base
    has_many :plato
end
