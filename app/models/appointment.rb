class Appointment < ActiveRecord::Base
   attr_accessible :Customer, :DateOfVisit, :Doctor_id, :Pet, :Reason, :Reminder
   belongs_to :doctor
   has_many :petdetails
  
   validates :Customer, :presence =>true 
   validates :Pet, :presence =>true 
   validates :Reason, :presence =>true
  # validates_date_of :DateOfVisit, :before => DateTime.now.to_date
end
