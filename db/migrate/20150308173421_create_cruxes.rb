class CreateCruxes < ActiveRecord::Migration
  def change
    create_table :cruxes do |t|
      t.text :description
      t.integer :days
      t.timestamps null: false
    end
  end
end
