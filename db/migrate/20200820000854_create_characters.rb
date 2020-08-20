class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :default_image
      t.text :command_list
      t.string :frame_data

      t.timestamps
    end
  end
end
