class ChangeDefaultForCruxesDays < ActiveRecord::Migration
  def change
    change_column :cruxes, :days, :integer, default: 0
  end
end
