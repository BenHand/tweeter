class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, default: "no name"
      t.integer :msgcount, default: 0
      t.timestamps null: false
    end
  end
end
