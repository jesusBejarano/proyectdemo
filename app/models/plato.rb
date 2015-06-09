# == Schema Information
#
# Table name: platos
#
#  id           :integer          not null, primary key
#  nombre       :string(255)
#  precio       :integer
#  TipoPlato_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Plato < ActiveRecord::Base
  belongs_to :TipoPlato
  
  has_attached_file :avatar,
 styles: {medium: "300x300>",
thumb: "100x100>" },
 default_url: "/images/:style/missing.png"
# Validate presence
validates :avatar, attachment_presence: true, presence: true
# Validate two or more conditions
validates_attachment :avatar,
 presence: true,
 content_type:
 {content_type:
 ["image/jpeg", "image/gif", "image/png"]
 },
 size: { in: 0..10.kilobytes }

end
