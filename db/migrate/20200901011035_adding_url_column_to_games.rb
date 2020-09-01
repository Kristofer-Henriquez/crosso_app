class AddingUrlColumnToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :game_url, :string
  end
end
