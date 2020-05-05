require "application_system_test_case"

class ScientificArticlesTest < ApplicationSystemTestCase
  setup do
    @scientific_article = scientific_articles(:one)
  end

  test "visiting the index" do
    visit scientific_articles_url
    assert_selector "h1", text: "Scientific Articles"
  end

  test "creating a Scientific article" do
    visit scientific_articles_url
    click_on "New Scientific Article"

    fill_in "Authors", with: @scientific_article.authors
    fill_in "Doi", with: @scientific_article.doi
    fill_in "First page", with: @scientific_article.first_page
    fill_in "Last page", with: @scientific_article.last_page
    fill_in "Link", with: @scientific_article.link
    fill_in "Magazine", with: @scientific_article.magazine
    fill_in "Number", with: @scientific_article.number
    fill_in "Publication date", with: @scientific_article.publication_date
    fill_in "Title", with: @scientific_article.title
    fill_in "Volume", with: @scientific_article.volume
    click_on "Create Scientific article"

    assert_text "Scientific article was successfully created"
    click_on "Back"
  end

  test "updating a Scientific article" do
    visit scientific_articles_url
    click_on "Edit", match: :first

    fill_in "Authors", with: @scientific_article.authors
    fill_in "Doi", with: @scientific_article.doi
    fill_in "First page", with: @scientific_article.first_page
    fill_in "Last page", with: @scientific_article.last_page
    fill_in "Link", with: @scientific_article.link
    fill_in "Magazine", with: @scientific_article.magazine
    fill_in "Number", with: @scientific_article.number
    fill_in "Publication date", with: @scientific_article.publication_date
    fill_in "Title", with: @scientific_article.title
    fill_in "Volume", with: @scientific_article.volume
    click_on "Update Scientific article"

    assert_text "Scientific article was successfully updated"
    click_on "Back"
  end

  test "destroying a Scientific article" do
    visit scientific_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scientific article was successfully destroyed"
  end
end
