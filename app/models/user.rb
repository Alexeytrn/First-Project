class User < ActiveRecord::Base
	validates :name, :presence => true	#общая валидация
	validates :lname, :presence => true
	validates :password, :presence => true
	validates :login, :presence => true, :uniqueness => true	#проверка на уникальность
	validates :email, :presence => true, :uniqueness => true
	has_many :posts, :dependent=>:destroy	#имеет много постов
	has_many :comments, :dependent=>:destroy
end
