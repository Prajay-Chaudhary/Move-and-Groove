class ChangeDurationToBeTimeInActivities < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :duration, :time
  end
end
