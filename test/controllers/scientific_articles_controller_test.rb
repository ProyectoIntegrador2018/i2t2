require 'test_helper'

class ScientificArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scientific_article = scientific_articles(:one)
  end

  test "should get index" do
    get scientific_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_scientific_article_url
    assert_response :success
  end

  test "should create scientific_article" do
    assert_difference('ScientificArticle.count') do
      post scientific_articles_url, params: { scientific_article: { authors: @scientific_article.authors, doi: @scientific_article.doi, first_page: @scientific_article.first_page, last_page: @scientific_article.last_page, link: @scientific_article.link, magazine: @scientific_article.magazine, number: @scientific_article.number, publication_date: @scientific_article.publication_date, title: @scientific_article.title, volume: @scientific_article.volume } }
    end

    assert_redirected_to scientific_article_url(ScientificArticle.last)
  end

  test "should show scientific_article" do
    get scientific_article_url(@scientific_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_scientific_article_url(@scientific_article)
    assert_response :success
  end

  test "should update scientific_article" do
    patch scientific_article_url(@scientific_article), params: { scientific_article: { authors: @scientific_article.authors, doi: @scientific_article.doi, first_page: @scientific_article.first_page, last_page: @scientific_article.last_page, link: @scientific_article.link, magazine: @scientific_article.magazine, number: @scientific_article.number, publication_date: @scientific_article.publication_date, title: @scientific_article.title, volume: @scientific_article.volume } }
    assert_redirected_to scientific_article_url(@scientific_article)
  end

  test "should destroy scientific_article" do
    assert_difference('ScientificArticle.count', -1) do
      delete scientific_article_url(@scientific_article)
    end

    assert_redirected_to scientific_articles_url
  end
end
