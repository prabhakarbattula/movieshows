class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :morning
      t.string :matinee
      t.string :first
      t.string :second
      t.integer :theatre_id

      t.timestamps
    end
  end
end
