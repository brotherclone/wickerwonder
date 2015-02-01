class RenameImageField < ActiveRecord::Migration
  def change
    rename_column :images, :image, :img
  end
end
