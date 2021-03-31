class AddUserIdToRestaurantes < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurantes, :user_id, :integer
  end
end
