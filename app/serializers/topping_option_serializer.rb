class ToppingOptionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price
end
