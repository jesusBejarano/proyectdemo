# == Schema Information
#
# Table name: tipo_menus
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  PrecioFijo :boolean
#  precio     :integer
#  created_at :datetime
#  updated_at :datetime
#

class TipoMenu < ActiveRecord::Base
end
