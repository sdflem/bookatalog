# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  year       :integer
#  summary    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

class Book < ActiveRecord::Base

  belongs_to :author

end
