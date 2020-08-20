class CreatePatchNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :patch_notes do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
