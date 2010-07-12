Event.class_eval do
#Validate the date validation
  validate :check_end_date_validation
 #This function checks whether the event end date is greater than start date or not.
  def check_end_date_validation
    unless self.ends_on.blank?
      if self.ends_on < self.starts_on
       #Add errror
       self.errors.add(:ends_on, "date should be greater than event start on date")
      end
    else
      self.errors.add(:ends_on, "can't be blank." )
    end
  end
end 