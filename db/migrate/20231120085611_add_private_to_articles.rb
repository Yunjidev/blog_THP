# db/migrate/..._add_private_to_articles.rb

class AddPrivateToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :private, :boolean, default: false
  end
end
