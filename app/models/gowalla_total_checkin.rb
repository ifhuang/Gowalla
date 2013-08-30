class GowallaTotalCheckin < ActiveRecord::Base

acts_as_gmappable
def gmaps4rails_address
  "#{self.latitude}, #{self.longitude}" 
end

end
