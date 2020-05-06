class AddResearcherToScientificArticle < ActiveRecord::Migration[5.2]
  def change
    add_reference :scientific_articles, :researcher, foreign_key: true
  end
end
