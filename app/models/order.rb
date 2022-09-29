class Order < ApplicationRecord
    belongs_to :customer
    has_many :bases
    has_many :base_options, through: :bases
    has_many :noodles
    has_many :noodle_options, through: :toppings
    has_many :toppings
    has_many :topping_options, through: :toppings
end
