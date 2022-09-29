class CreateToppings < ActiveRecord::Migration[6.1]
    def change
      create_table :toppings do |t|
        t.belongs_to :order, null: false, foreign_key: true
        t.belongs_to :topping_option, null: false, foreign_key: true
        t.integer :price
        t.timestamps
      end
    end
  end