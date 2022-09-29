class BaseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id
  belongs_to :order
  belongs_to :base_option
end
