require "uri"

class Client < ApplicationRecord
    has_many :projects 
    has_one :address, as: :addressable, dependent: :destroy

    validates_presence_of :name, :website

    URL_REGEXP = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
    validates :website, format: { :multiline => true, with: URL_REGEXP, message: 'You provided invalid URL' }
end
