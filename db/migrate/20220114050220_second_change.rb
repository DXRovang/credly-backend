class SecondChange < ActiveRecord::Migration[6.1]
  def change
    remove_column :heros, :alt_names
    remove_column :heros, :country_code
    add_column :heros, :bred_for, :string
    add_column :heros, :breed_group, :string
  end
end
