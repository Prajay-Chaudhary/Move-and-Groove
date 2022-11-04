class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.date :activity_date
      t.time :duration

      t.timestamps
    end
  end
end
