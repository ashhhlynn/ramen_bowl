class OrdersController < ApplicationController
    def create
        order = Order.new(order_params)
        if order.save
            render({json: order, except: [:created_at, :updated_at, :time_ordered]})
        else
            render json: order.errors, status: :unprocessable_entity
        end
    end
    
           
    def show 
        order = Order.find_by(id: params[:id])
render json: order.to_json
    end 

    def order_params
        params.require(:order).permit(:total, :customer_id)
    end 

end 
