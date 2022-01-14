class ChangeHero < ActiveRecord::Migration[6.1]
  def change
    remove_column :heros, :name
    remove_column :heros, :gender
    remove_column :heros, :culture
    remove_column :heros, :born
    remove_column :heros, :died
    add_column :heros, :name, :string
    add_column :heros, :temperament, :string
    add_column :heros, :life_span, :string
    add_column :heros, :alt_names, :string
    add_column :heros, :widipedia_url, :string
    add_column :heros, :origin, :string
    add_column :heros, :country_code, :string  
  end
end

