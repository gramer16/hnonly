class ServiceType < ActiveRecord::Base
	has_many :services, dependent: :destroy
end
