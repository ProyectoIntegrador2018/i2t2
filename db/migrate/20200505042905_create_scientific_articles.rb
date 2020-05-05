class CreateScientificArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :scientific_articles do |t|
      t.string :title
      t.string :authors
      t.date :publication_date
      t.string :magazine
      t.string :volume
      t.integer :number
      t.integer :first_page
      t.integer :last_page
      t.string :doi
      t.string :link

      t.timestamps
    end
  end
end
