class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :carts
	has_many :favorites
	has_many :items, :through => :carts
	#has_many :favorite_items, :class_name => "Item", :through => :favorites

end