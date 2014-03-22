class Movie < ActiveRecord::Base
  has_and_belongs_to_many :theatres
  has_and_belongs_to_many :casts
  has_and_belongs_to_many :shows

  def self.search(query)
    where("name like ?", "%#{query}%")
  end

end
