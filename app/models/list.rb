class List < ActiveRecord::Base
  attr_accessible :comment, :apartment_id, :user_id
  validates_presence_of :apartment_id
  validates_presence_of :user_id
  validates_uniqueness_of :apartment_id
   belongs_to :apartment
  belongs_to :user
  def apart
  	@id=self.apartment_id
  	@apartment=Apartment.find_by_id(@id)
  	return @apartment
  end
end
