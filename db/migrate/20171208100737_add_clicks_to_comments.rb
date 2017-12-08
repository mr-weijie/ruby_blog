class AddClicksToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :clicks, :int
  end
end
