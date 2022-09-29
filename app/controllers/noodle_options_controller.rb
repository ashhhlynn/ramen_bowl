class NoodleOptionsController < ApplicationController

    def index
        noodle_options = NoodleOption.all
            render({json: noodle_options, except: [:created_at, :updated_at]})
    
        end 
    end 