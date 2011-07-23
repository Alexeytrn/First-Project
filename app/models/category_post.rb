class CategoryPost < ActiveRecord::Base
	belongs_to :post	#принадлежит посту
	belongs_to :category	#принадлежит категориям
end
