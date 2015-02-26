class AddAuthorRefToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :author, index: true
    add_foreign_key :books, :authors
  end
end
