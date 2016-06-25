class Author < ActiveRecord::Base
	  #accepts_nested_attributes_for :book
	  has_many :books
end
