class RemovestartFromposts < ActiveRecord::Migration[7.0]
  def change
    remove_column  :posts, :start, :timestamp
    remove_column  :posts, :finish, :timestamp
  end
end
