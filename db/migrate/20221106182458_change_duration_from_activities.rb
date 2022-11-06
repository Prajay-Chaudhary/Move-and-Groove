class ChangeDurationFromActivities < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :duration, :datetime
  end
end
