class RemoveAuthorToComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :clicks, :int
  end
end
