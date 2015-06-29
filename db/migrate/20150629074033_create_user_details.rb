class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
			t.references :user
			t.string :first_name
			t.string :last_name
			t.string :username
			t.integer :age    	
      t.timestamps null: false
    end
    add_index("user_details", "user_id")
  end
end
