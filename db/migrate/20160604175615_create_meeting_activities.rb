class CreateMeetingActivities < ActiveRecord::Migration
  def change
    create_table :meeting_activities do |t|
      t.belongs_to :meeting, index: true, foreign_key: true
      t.belongs_to :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
