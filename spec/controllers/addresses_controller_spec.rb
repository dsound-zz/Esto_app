require 'rails_helper'

RSpec.describe AddressesController, type: :controller do
      describe 'Routing', type: :routing do
        it do
            should route(:get, '/addresses', port: 3000).
            to('addresses#index')
        end
    end
end
