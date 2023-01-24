class CreateResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :responses do |t|
      t.integer :gender,                   null: false, default: "0"
      t.integer :age,                      null: false, default: "0"
      t.string :internet_protocol_address, null: false, default: ""
      t.integer :giver,                    null: false, default: "0"
      t.integer :gifted_event,             null: false, default: "0"
      t.integer :present_genre,            null: false, default: "0"
      t.timestamps
    end
  end
end
