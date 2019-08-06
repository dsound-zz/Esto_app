require 'rails_helper'

RSpec.describe EmailsController, type: :controller do
  describe 'Routing', type: :routing do
        it do
            should route(:get, '/emails', port: 3000).
            to('emails#index')
        end
    end
end
