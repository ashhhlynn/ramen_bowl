class Topping < ApplicationRecord
    belongs_to :order
    belongs_to :topping_option
end
