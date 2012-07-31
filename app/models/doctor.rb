class Doctor < ActiveRecord::Base
  attr_accessible :Address, :City, :CollegeName, :Experience, :Name, :State, :Zip, :appointments_attributes
   validates :Name, :length => {:maximum => 35, :minimum =>2}, :uniqueness =>true
   validates :Zip, :length => {:is => 5}
   validates_numericality_of :Experience, :greater_than => 1, :less_than => 100
   
   
    has_many :appointments
end
