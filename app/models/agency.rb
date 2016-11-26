class Agency < ActiveRecord::Base

  validates :numero, uniqueness: true

end
