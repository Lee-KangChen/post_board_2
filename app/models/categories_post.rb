class CategoriesPost < ActiveRecord::Base
  belongs_to :post
  belongs_to :category

  validates :name, presence: true
end
