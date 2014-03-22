class Show < ActiveRecord::Base
  belongs_to :theatre

  has_and_belongs_to_many :movies
end
