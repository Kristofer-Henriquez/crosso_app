class CreateTierLists < ActiveRecord::Migration[6.0]
  def change
    create_table :tier_lists do |t|
      t.string :list

      t.timestamps
    end
  end
end
