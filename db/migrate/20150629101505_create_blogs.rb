class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
    	t.references :user
    	t.string :name
    	t.string :subtitle
    	t.text :description
      t.timestamps null: false
    end
    add_index("blogs", "user_id")
  end
end
