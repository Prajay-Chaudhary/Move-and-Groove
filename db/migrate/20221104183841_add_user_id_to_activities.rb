class AddUserIdToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :user_id, :int
  end
end
