class ChangeDatetypeAlltimeOfPosts < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :alltime, :string
  end
end
