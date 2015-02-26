class AddAuthorRefToAuthorProfiles < ActiveRecord::Migration
  def change
    add_reference :author_profiles, :author, index: true
    add_foreign_key :author_profiles, :authors
  end
end
