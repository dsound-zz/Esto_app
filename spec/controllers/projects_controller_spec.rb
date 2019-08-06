require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  describe 'Routing', type: :routing do
        it do
            should route(:get, '/projects', port: 3000).
            to('projects#index')
        end
    end

  
end
