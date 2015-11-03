class EnterpriseCategoryPicture < ActiveRecord::Base
	belongs_to :enterprise
	belongs_to :category
	has_many :pictures
end
