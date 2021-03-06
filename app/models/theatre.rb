class Theatre < ActiveRecord::Base
  has_many :shows

  has_and_belongs_to_many :movies

  def self.search(query)
    where("name like ?", "%#{query}%")
  end

  def self.search_place(query)
    where("place like ?", "%#{query}%")
  end

end
