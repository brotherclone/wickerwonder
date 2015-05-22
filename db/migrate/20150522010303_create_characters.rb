class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :age
      t.string :species
      t.string :occupation
      t.string :status
      t.string :bio
      t.string :name
      t.string :animatedimg
      t.string :portraitimg
      t.timestamps
    end
  end
end
