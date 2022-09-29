class ToppingsController < ApplicationController
    def create

      topping  = Topping.create(topping_params)
        if topping.save
            render({json: topping, except: [:created_at, :updated_at]})
        else
            render json: topping.errors, status: :unprocessable_entity
        end
    end

    def index 
    toppings = Topping.all
        render({json: toppings, except: [:created_at, :updated_at]})
    end 

    def show 
        topping = Topping.find_by(id: params[:id])
        options = {
    include: [:order, :topping_option]
        }
        render json: ToppingSerializer.new(topping, options)
    end 



private 
    def topping_params
        params.require(:topping).permit(:price, :order_id, :topping_option_id)
    end    
end
