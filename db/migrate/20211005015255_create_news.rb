class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|

      t.references :heritages,   null: false
      
      t.timestamps
    end
  end
end
