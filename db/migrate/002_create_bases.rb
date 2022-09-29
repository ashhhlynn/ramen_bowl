class CreateBases < ActiveRecord::Migration[6.1]
    def change
      create_table :bases do |t|
        t.belongs_to :order, null: false, foreign_key: true
        t.belongs_to :base_option, null: false, foreign_key: true
        t.timestamps
      end
    end
  end