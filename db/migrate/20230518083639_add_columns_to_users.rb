class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :start, :timestamp
    add_column :posts, :finish, :timestamp
    add_column :posts, :alltime, :integer
  end
end
