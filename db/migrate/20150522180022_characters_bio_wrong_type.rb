class CharactersBioWrongType < ActiveRecord::Migration
  def change
    change_column(:characters, :bio, :text)
  end
end
