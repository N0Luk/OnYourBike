class AddUserToBikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :bikes, :user, null: false, foreign_key: true
  end
end
