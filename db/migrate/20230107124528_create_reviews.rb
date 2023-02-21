class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :end_user_id,      null: false
      t.string :code,              null: false
      t.string :image,             null: false
      t.string :name,              null: false
      t.integer :genre,            null: false
      t.string :category,          null: false
      t.integer :price,            null: false
      t.string :url,               null: false

      t.text :body,                null: false
      t.float :evaluation
      t.integer :getting_method,   null: false
      t.integer :giver,            null: false
      t.integer :gifted_event,     null: false
      t.boolean :is_anonymous,     null: false
      t.boolean :is_displayed,     null: false
      t.boolean :is_checked,       null: false, default: "false"
      t.boolean :is_disclose,      null: false, default: "true"
      t.timestamps
    end
  end
end
