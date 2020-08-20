class ChangeDateToString < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :release_date, :string
  end
end
