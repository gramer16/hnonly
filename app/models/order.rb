class Order < ActiveRecord::Base
	validates :first_name, :last_name, :company_name, :street_address, :phone_number, :email, presence: true
	belongs_to :subscriptionpackage
	belongs_to :buyer, class_name: "User"
	belongs_to :seller, class_name: "User"
end
