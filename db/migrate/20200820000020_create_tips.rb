class CreateTips < ActiveRecord::Migration[6.0]
  def change
    create_table :tips do |t|
      t.text :tips_list

      t.timestamps
    end
  end
end
