# == Schema Information
#
# Table name: provincia
#
#  id         :integer          not null, primary key
#  codigo     :string(255)
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Provincium < ActiveRecord::Base
      belongs_to :ubigeo
end
