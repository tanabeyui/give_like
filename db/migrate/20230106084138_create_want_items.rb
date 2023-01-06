class CreateWantItems < ActiveRecord::Migration[6.1]
  def change
    create_table :want_items do |t|
      t.integer :end_user_id,      null: false, default: ""
      t.string :code,              null: false, default: ""
      t.string :image,             null: false, default: ""
      t.string :name,              null: false, default: ""
      t.string :category,          null: false, default: ""
      t.integer :price,            null: false, default: ""
      t.string :url,               null: false, default: ""
      t.timestamps
    end
  end
end
