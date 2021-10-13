class ChangeCountriesTo < ActiveRecord::Migration[6.0]
  def change
    rename_table :countries, :nations
  end
end
