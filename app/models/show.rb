class Show < ActiveRecord::Base
  validates_uniqueness_of :theatre_id

  belongs_to :theatre
  belongs_to :movie

  #has_and_belongs_to_many :movies
end
