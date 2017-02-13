class Port < ApplicationRecord
  belongs_to :country
  belongs_to :port_type
end
