class RemoveAttributeFromTeam < ActiveRecord::Migration[5.0]
  def change
    remove_column :teams, :City, :string
  end
end
