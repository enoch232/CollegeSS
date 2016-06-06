class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keyword
      t.decimal :minprice
      t.decimal :maxprice
      t.string :category
      t.string :specific_category
      t.integer :condition
      t.string :school
      t.string :state

      t.timestamps
    end
  end
end
