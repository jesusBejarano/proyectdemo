# == Schema Information
#
# Table name: tipo_documentos
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TipoDocumento < ActiveRecord::Base
end
