class AddingKeysToGameModel < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :character_id, :integer
    add_column :games, :dlc_id, :integer
    add_column :games, :stage_id, :integer
    add_column :games, :patch_notes_id, :integer
  end
end
