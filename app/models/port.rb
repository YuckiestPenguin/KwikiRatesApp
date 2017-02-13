class Port < ApplicationRecord
  belongs_to :country
  belongs_to :port_type
  has_many :origins, :class_name => 'Rate'
  has_many :destinations, :class_name => 'Rate'
end
