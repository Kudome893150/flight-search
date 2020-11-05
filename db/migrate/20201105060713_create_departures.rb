class CreateDepartures < ActiveRecord::Migration[6.0]
  def change
    create_table :departures do |t|
      t.string :departure, null: false #出発空港名
      
      t.timestamps
    end
  end
end
