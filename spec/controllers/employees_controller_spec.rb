require 'rails_helper'

RSpec.describe EmployeesController, type: :controller do
    describe 'Routing', type: :routing do
        it do
            should route(:get, '/employees', port: 3000).
            to('employees#index')
        end
    end

    
end
