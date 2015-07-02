require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  context 'Post create' do
    setup do
      @create_params = {:text => "Hello World", :title => "Hello Rails"}
      Article.delete_all
      @article = Article.new(@create_params)
      @article.save
      
    end

    should 'create article with valid params' do
      post :create, @create_params
      article = Article.first

      assert_redirect_to article_path(article)
      assert_equal "Hello World", article.text
      assert_equal "Hello Rails", article.title
    end
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

end
