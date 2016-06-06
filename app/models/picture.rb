class Picture < ApplicationRecord
	has_attached_file :image, styles: { large: "600x600#", medium: "300x300#", thumb: "100x100#" }, default_url: ""
  	do_not_validate_attachment_file_type :image
	belongs_to :post
end
