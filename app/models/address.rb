class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  validates_presence_of :line_1, :city, :state, :zipcode, :country
end
