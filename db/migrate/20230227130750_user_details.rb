class UserDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :user_details do |t|
      t.string :students
    end
  end
end
