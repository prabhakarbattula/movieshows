class RemoveVillianFromCasts < ActiveRecord::Migration
  def change
    remove_column :casts, :villian, :string
  end
end
