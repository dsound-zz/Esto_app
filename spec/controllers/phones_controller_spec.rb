require 'rails_helper'

RSpec.describe PhonesController, type: :controller do
  describe 'Routing', type: :routing do
        it do
            should route(:get, '/phones', port: 3000).
            to('phones#index')
        end
    end
end
