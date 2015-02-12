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

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

	def setup
    	@author = Author.new(first_name: "Ayn", last_name: "Rand", year: 1905)
  	end

	test "should be valid" do
    	assert @author.valid?
  	end

	test "first name should be present" do
		@author.first_name = "       "
    	assert_not @author.valid?
  	end

	test "first name should be less than equal to 50 characters" do
		scott = authors(:scott)
		#scott.first_name = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    	assert scott.valid?
  	end

end
