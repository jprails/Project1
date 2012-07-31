class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :Name
      t.string :Address
      t.string :City
      t.string :State
      t.integer :Zip
      t.string :CollegeName
      t.integer :Experience

      t.timestamps
    end
  end
end
