# == Schema Information
#
# Table name: distritos
#
#  id         :integer          not null, primary key
#  codigo     :string(255)
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Distrito < ActiveRecord::Base
      belongs_to :ubigeo
end
