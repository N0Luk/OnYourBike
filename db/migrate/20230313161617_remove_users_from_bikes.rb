class RemoveUsersFromBikes < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bikes, :users, null: false, foreign_key: true
  end
end
