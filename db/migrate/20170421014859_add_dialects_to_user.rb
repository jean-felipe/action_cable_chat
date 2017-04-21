class AddDialectsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :dialects, :integer
  end
end
