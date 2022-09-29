class ToppingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id
  belongs_to :order
  belongs_to :topping_option
end
