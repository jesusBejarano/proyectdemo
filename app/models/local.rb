# == Schema Information
#
# Table name: locals
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  direccion  :string(255)
#  telefono   :string(255)
#  ubigeo_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Local < ActiveRecord::Base
  belongs_to :ubigeo
end
