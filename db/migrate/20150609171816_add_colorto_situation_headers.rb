class AddColortoSituationHeaders < ActiveRecord::Migration
  def change
    add_column :situations, :headingcolor, :text
  end
end
