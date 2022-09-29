class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :total, :id
end
