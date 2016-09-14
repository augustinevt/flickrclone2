class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :title
      t.attachment :attachment

      t.timestamps
    end
  end
end
