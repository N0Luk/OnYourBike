class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :type
      t.string :name
      t.float :price
      t.string :location
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
