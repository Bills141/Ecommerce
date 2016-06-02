class User < ActiveRecord::Base
       
     
	has_many :products
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :payment  
  accepts_nested_attributes_for :payment 
         mount_uploader :image, ImageUploader
         # validates_presence_of :first_name
         # validates_presence_of :last_name
         # validates_presence_of :image
end
