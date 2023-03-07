class CreateTableProjects < ActiveRecord::Migration[6.1]
  def change
     create_table :projects do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :image_url
      t.integer :user_id
      t.timestamps
    end
  end
end
