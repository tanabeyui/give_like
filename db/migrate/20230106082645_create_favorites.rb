class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :end_user_id,      null: false
      t.string :code,              null: false
      t.string :image,             null: false
      t.string :name,              null: false
      t.integer :genre,            null: false
      t.string :category,          null: false
      t.integer :price,            null: false
      t.string :url,               null: false
      t.timestamps
    end
  end
end
