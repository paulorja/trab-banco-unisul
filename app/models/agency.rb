class Agency < ActiveRecord::Base


  validates :nome, length: { minimum: 3, maximum: 200}
  validates :nome, uniqueness: true
  validates :numero, length: { minimum: 1, maximum: 4}
  validates :numero, uniqueness: true

end
