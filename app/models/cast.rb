class Cast < ActiveRecord::Base
  belongs_to :movie

  def self.search_hero(query)
    where("hero like ?", "%#{query}%")
  end

  def self.search_heroine(query)
    where("heroine like ?", "%#{query}%")
  end

end
