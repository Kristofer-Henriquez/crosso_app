class CreateColorCostumes < ActiveRecord::Migration[6.0]
  def change
    create_table :color_costumes do |t|
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end
