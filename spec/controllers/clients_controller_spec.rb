require 'rails_helper'

RSpec.describe ClientsController, type: :controller do
  describe 'Routing', type: :routing do
        it do
            should route(:get, '/clients', port: 3000).
            to('clients#index')
        end
    end
end
