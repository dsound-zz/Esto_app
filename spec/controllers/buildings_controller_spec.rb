require 'rails_helper'

RSpec.describe BuildingsController, type: :controller do
  describe 'Routing', type: :routing do
        it do
            should route(:get, '/buildings', port: 3000).
            to('buildings#index')
        end
    end
end
