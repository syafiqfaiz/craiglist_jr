class CreatePosts <ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :user_name
      t.string  :email
      t.string  :title
      t.string  :description
      t.integer :category_id

      t.timestamps
    end
  end
end
