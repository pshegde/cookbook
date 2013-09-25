class Recipe < ActiveRecord::Base
  #attr_accessible :category,:title,:description,:instruction
  belongs_to :category
  validates :title, :presence => true
  validates :inst, :presence => true
  validates :category, :presence => true
  def self.search(query)
    require 'set'
    result = Set.new
    categories = Category.where('LOWER(recipe_name) LIKE LOWER(?)', "%#{query}%")
    result.merge( Recipe.final_all_by_category_id(categories))  ;
  end
end
