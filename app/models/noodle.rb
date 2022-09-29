class Noodle < ApplicationRecord
    belongs_to :order
    belongs_to :noodle_option
end
