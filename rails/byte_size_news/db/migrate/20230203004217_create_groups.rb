class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.integer :active_members
      t.string :sub_genre
      t.boolean :boy_band

      t.timestamps
    end
  end
end
