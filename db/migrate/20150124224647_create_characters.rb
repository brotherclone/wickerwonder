class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :shortbio
      t.text  :longbio
      t.integer :age
      t.timestamps
    end
  end
end
