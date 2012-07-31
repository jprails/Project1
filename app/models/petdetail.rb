class Petdetail < ActiveRecord::Base
  attr_accessible :age, :appointment_id, :breed, :lastvisitdate, :nameofpet, :typeofpet, :weight
  belongs_to :appointment
  
  validates :NameofPet, :length => {:maximum => 35, :minimum =>2}, :presence =>true
  validates_inclusion_of :Breed, :in => %w( doc cat bird ), :message => "extension is not included in the list"
  validates :Age,:Weight,:LastVisitDate, :presence =>true
end
