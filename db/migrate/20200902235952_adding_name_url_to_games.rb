class AddingNameUrlToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :name_url, :string
  end
end
