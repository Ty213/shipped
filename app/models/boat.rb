class Boat < ApplicationRecord
	belongs_to :user
	has_many :jobs

	has_attached_file :avatar, styles: { medium: "50x50>", thumb: "100x100>", large: "500x500>"  }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
