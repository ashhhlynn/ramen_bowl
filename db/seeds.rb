# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
topping_options = ToppingOption.create([{name: 'Chashu', price: '4'}, {name: 'Egg', price: '2'}, {name: 'Mushrooms', price: '2'}])
base_options = BaseOption.create([{name: 'Shoyu'}, {name: 'Tonkatsu'}, {name: 'Miso'}])
noodle_options = NoodleOption.create([{name: 'thin'}, {name: 'thick'}])
customer_one = Customer.create(name: 'Ashley')
order_one = Order.create(customer_id: '1', total: '50')
topping_one = Topping.create(order_id: '1', topping_option_id: '2')
base_one = Base.create(order_id: '1', base_option_id: '1')
noodle_one = Noodle.create(order_id: '1', noodle_option_id: '1')