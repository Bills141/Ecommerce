class Product < ActiveRecord::Base

	belongs_to :user
	belongs_to :home
	has_many :product_categories
	has_many :categories, through:  :product_categories
	mount_uploader :image, ImageUploader
	validates_presence_of :image

end
