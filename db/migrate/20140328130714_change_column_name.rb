class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :casts, :heroin,  :heroine
  end
end
