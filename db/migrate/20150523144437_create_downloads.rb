class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.belongs_to :material, index:true
      t.string :file
      t.text :description
      t.string :link
      t.timestamps
    end
  end
end
