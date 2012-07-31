class CreatePetdetails < ActiveRecord::Migration
  def change
    create_table :petdetails do |t|
      t.string :nameofpet
      t.string :typeofpet
      t.string :breed
      t.integer :age
      t.integer :weight
      t.date :lastvisitdate
      t.integer :appointment_id

      t.timestamps
    end
  end
end
