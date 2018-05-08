class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :weight
      t.integer :price
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
