class CreateCategoryTags < ActiveRecord::Migration[5.0]
  def change
    create_table :category_tags do |t|
      t.integer :category_id
      t.integer :image_id

      t.timestamps
    end
  end
end
