class CreateCombos < ActiveRecord::Migration[6.0]
  def change
    create_table :combos do |t|
      t.string :combo_video
      t.text :notation

      t.timestamps
    end
  end
end
