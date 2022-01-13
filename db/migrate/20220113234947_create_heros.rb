class CreateHeros < ActiveRecord::Migration[6.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :gender
      t.string :culture
      t.string :born
      t.string :died

      t.timestamps
    end
  end
end
