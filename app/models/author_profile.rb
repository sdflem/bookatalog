# == Schema Information
#
# Table name: author_profiles
#
#  id         :integer          not null, primary key
#  birthplace :string
#  bio        :text
#  awards     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

class AuthorProfile < ActiveRecord::Base

  belongs_to :author, # Name of the methods (rolename in class diagram)
             class_name: "Author", # Name of other class
             foreign_key: "author_id" # Name of foreign key column 

end
