class AddingForeignKeysToModels < ActiveRecord::Migration[6.0]
  def change
    add_column :color_costumes, :character_id, :integer
    add_column :characters, :game_id, :integer
    add_column :dlcs, :game_id, :integer
    add_column :stages, :game_id, :integer
    add_column :patch_notes, :game_id, :integer
    add_column :tier_lists, :game_id, :integer
    add_column :tier_lists, :user_id, :integer
    add_column :tips, :character_id, :integer
    add_column :tips, :user_id, :integer
    add_column :combos, :character_id, :integer
    add_column :combos, :user_id, :integer
    add_column :tutorials, :character_id, :integer
    add_column :tutorials, :user_id, :integer
  end
end
