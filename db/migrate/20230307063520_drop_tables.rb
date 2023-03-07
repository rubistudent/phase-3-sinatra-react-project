class DropTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :skills
    drop_table :projects
    create_table :projects do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :image_url
      t.integer :user_id
      t.timestamps
    end
    create_table :skills do |t|
      t.string :skill
      t.integer :user_id
      t.timestamps
    end
  end
end
