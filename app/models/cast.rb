class Cast < ActiveRecord::Base
  belongs_to :movie

  def self.search_hero(query)
    where("hero like ?", "%#{query}%")
  end

  def self.search_heroin(query)
    where("heroin like ?", "%#{query}%")
  end

end
