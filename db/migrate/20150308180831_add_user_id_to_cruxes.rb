class AddUserIdToCruxes < ActiveRecord::Migration
  def change
    add_column :cruxes, :user_id, :integer
  end
end
