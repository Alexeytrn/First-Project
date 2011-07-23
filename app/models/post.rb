class Post < ActiveRecord::Base
	validates :user_id, :presence => true	#общая валидация на наличие чего-либо
	validates :title, :presence => true
	validates :content, :presence => true
	belongs_to :user	#пост принадлежит пользователю
	has_many :category_posts, :dependent => :destroy 	#имеет много категорий постов, уничтожаются одновременно
	has_many :categories, :through => :category_posts	 #имеет много категорий
	has_many :comments, :dependent=>:destroy	#имеет много комментариев
end
