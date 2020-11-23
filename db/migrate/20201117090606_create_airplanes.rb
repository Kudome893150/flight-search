class CreateAirplanes < ActiveRecord::Migration[6.0]
  def change
    create_table :airplanes do |t|
      t.string :equipment, null: false
      t.text :eq_name, null: false
      t.text :explain, null:false
      t.timestamps
    end
  end
end