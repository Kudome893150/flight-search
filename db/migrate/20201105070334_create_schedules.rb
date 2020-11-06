class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :country, null: false
      t.string :airline, null: false
      t.integer :fltnum, null: false
      t.time :dptime, null: false
      t.time :artime, null: false
      t.string :day, null: false
      t.string :model, null: false
      t.references  :departure, foreign_key: true

      t.timestamps
    end
  end
end
