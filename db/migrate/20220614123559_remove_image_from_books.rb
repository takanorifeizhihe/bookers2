class RemoveImageFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :image, :binary
  end
end
