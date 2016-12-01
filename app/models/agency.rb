class Agency < ActiveRecord::Base

  validates :numero, length: { minimum: 1, maximum: 4}
  validates :numero, uniqueness: true

end
