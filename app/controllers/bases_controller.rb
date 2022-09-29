class BasesController < ApplicationController
    def create

        base = Base.create(base_params)
        if base.save
            render({json: base, except: [:created_at, :updated_at]})
        else
            render json: base.errors, status: :unprocessable_entity
        end
        end
    
        
        def show 
            base = Base.find_by(id: params[:id])
                options = {
            include: [:order, :base_option]
                }
                render json: BaseSerializer.new(base, options)
        end 


private 
def base_params
    params.require(:base).permit(:order_id, :base_option_id)
end 
end 