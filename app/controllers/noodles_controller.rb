class NoodlesController < ApplicationController

    def create

        noodle = Noodle.create(noodle_params)
        if noodle.save
            render({json: noodle, except: [:created_at, :updated_at]})
        else
            render json: noodle.errors, status: :unprocessable_entity
        end
    end

           
    def show 
        noodle = Noodle.find_by(id: params[:id])
            options = {
        include: [:order, :noodle_option]
            }
            render json: NoodleSerializer.new(noodle, options)
    end 

    def noodle_params
        params.require(:noodle).permit(:order_id, :noodle_option_id)
    end 
end 