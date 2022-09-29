class CustomersController < ApplicationController

    
    def create

        customer = Customer.find_or_create_by(customer_params)
        if customer.save
            render({json: customer, except: [:created_at, :updated_at]})
        else
            render json: customer.errors, status: :unprocessable_entity
        end
    end

           
    def show 
        customer = Customer.find_by(id: params[:id])
render json: customer.to_json

    end 

private 

def customer_params
    params.require(:customer).permit(:name)
end 

end 