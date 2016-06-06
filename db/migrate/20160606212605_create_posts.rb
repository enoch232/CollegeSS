class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :keyword
      t.string :state
      t.string :school
      t.integer :condition
      t.string :category
      t.string :specific_category
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
