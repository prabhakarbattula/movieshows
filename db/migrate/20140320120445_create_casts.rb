class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.string :hero
      t.string :heroin
      t.string :villian
      t.integer :movie_id

      t.timestamps
    end
  end
end
