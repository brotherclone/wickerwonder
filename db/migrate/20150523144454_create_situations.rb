class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.string :name
      t.text :description
      t.string :situationimg
      t.string :situationthumbnail
      t.timestamps
    end
  end
end
