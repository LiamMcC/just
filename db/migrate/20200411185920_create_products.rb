class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :shortDes
      t.text :longDes
      t.integer :price
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :category
      t.string :range
      t.string :size2

      t.timestamps
    end
  end
end
