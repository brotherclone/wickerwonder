class Removethumbnails < ActiveRecord::Migration
  def change
    remove_column :characters, :portraitimg
    remove_column :situations, :situationthumbnail
  end
end
