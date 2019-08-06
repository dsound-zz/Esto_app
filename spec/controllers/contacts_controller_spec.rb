require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe 'Routing', type: :routing do
        it do
            should route(:get, '/contacts', port: 3000).
            to('contacts#index')
        end
    end
end
