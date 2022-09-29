class BaseOptionsController < ApplicationController

    def index
        base_options = BaseOption.all
        render({json: base_options, except: [:created_at, :updated_at]})

    end 
end 