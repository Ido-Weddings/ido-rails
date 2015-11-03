class Picture < ActiveRecord::Base
  belongs_to :enterprise
  belongs_to :category
end
