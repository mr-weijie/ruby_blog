class AddClicksToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :clicks, :int
  end
end
