class Picture < ActiveRecord::Base
	belongs_to :residential
	has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpg"
	validates_attachment :image, :content_type => { :content_type => %w(image/jpeg image/jpg image/png) } 
end
