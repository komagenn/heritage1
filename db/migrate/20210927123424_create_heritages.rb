class CreateHeritages < ActiveRecord::Migration[6.0]
  def change
    create_table :heritages do |t|

      t.string :name, null: false
      t.integer :register_id, null: false
      t.text :explain, null: false
      t.references :user, null: false
      t.references :country, null: false
      
      t.timestamps
    end
  end
end
