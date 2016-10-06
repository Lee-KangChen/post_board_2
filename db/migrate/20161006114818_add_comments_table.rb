class AddCommentsTable < ActiveRecord::Migration
  def change
    create_table :commetns do |t|
      t.text :content
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
