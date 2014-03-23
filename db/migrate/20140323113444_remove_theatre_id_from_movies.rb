class RemoveTheatreIdFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :theatre_id, :string
  end
end
