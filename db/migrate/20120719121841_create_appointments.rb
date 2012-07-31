class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :DateOfVisit
      t.string :Pet
      t.string :Customer
      t.string :Reminder
      t.text :Reason
      t.integer :doctor_id

      t.timestamps
    end
  end
end
