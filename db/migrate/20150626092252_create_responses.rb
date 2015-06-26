class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
    	t.references :comment, index: true, foreign_key: true
    	t.string :commenter
      t.text :body
      t.timestamps null: false
    end
  end
end
