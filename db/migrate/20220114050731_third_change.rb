class ThirdChange < ActiveRecord::Migration[6.1]
  def change
    remove_column :heros, :widipedia_url
    add_column :heros, :image_url, :string
  end
end
