class CreateInfoSelfCares < ActiveRecord::Migration[5.2]
  def change
    create_table :info_self_cares do |t|
      t.string :care_name
      t.string :time
      t.date :date_frome
      t.date :date_to
      t.string :location
      t.string :period
      t.date :reminder_time

      t.timestamps
    end
  end
end
