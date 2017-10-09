class AddUserIdToSuplements < ActiveRecord::Migration[5.1]
  def change
    add_column :suplements, :user_id, :integer
  end
end
