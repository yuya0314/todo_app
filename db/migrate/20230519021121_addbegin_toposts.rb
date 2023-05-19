class AddbeginToposts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :begin, :date
    add_column :posts, :last,  :date
  end
end
