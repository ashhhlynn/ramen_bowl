class ToppingOptionsController < ApplicationController

def index
topping_options = ToppingOption.all

        render({json: topping_options, except: [:created_at, :updated_at]})
    end 

end 