class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|

      t.integer :heritage_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
