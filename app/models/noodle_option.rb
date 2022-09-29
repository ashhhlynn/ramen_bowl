class NoodleOption < ApplicationRecord
    has_many :noodles
    has_many :orders, through: :noodles
end
