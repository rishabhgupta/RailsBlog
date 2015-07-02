class AlterArticles < ActiveRecord::Migration
  def change
  	add_column("articles","blog_id", :integer, :after => "id")
  	add_index("articles","blog_id")
  end
end
