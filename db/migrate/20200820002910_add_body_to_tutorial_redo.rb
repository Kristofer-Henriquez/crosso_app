class AddBodyToTutorialRedo < ActiveRecord::Migration[6.0]
  def change
    add_column :tutorials, :body, :text
  end
end
