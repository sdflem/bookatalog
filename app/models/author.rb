# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ActiveRecord::Base

  has_one :profile, # Name of methods (rolename in class diagram)
          class_name: "AuthorProfile", # Name of "had" class
          foreign_key: "author_id" # Name of foreign key column

  has_many :books

	validates :first_name, presence: true, length: { maximum: 50 }

end
