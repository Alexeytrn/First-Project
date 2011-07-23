class Category < ActiveRecord::Base
	has_many :category_posts	#имеет много категорий постов
	has_many :posts, :through => :category_posts	#имеет много постов
end
