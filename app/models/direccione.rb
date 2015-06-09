# == Schema Information
#
# Table name: direcciones
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  nombre     :string(255)
#  ubigeo_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Direccione < ActiveRecord::Base
  belongs_to :user
  belongs_to :ubigeo
end
