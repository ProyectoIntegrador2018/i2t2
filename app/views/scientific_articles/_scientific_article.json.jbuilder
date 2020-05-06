json.extract! scientific_article, :id, :title, :authors, :publication_date, :magazine, :volume, :number, :first_page, :last_page, :doi, :link, :created_at, :updated_at
json.url scientific_article_url(scientific_article, format: :json)
