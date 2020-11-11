class CreateAirlines < ActiveRecord::Migration[6.0]
  def change
    create_table :airlines do |t|

      t.timestamps
    end
  end
end
