class CreateNoodleOptions < ActiveRecord::Migration[6.1]
    def change
      create_table :noodle_options do |t|
        t.string :name
        
  
        t.timestamps
      end
    end
  end