class Boat < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :jobs

	has_attached_file :avatar, styles: { medium: "250x250>", large: "500x500>"  }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	validates :name, presence: true, uniqueness: true
end
