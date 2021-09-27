class CreateHeritages < ActiveRecord::Migration[6.0]
  def change
    create_table :heritages do |t|

      t.timestamps
    end
  end
end
