class NoodleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id
  belongs_to :order
  belongs_to :noodle_option
end
