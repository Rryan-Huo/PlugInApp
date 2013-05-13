class User < ActiveRecord::Base
  attr_accessible :name, :password

  has_secure_password

  validates_uniqueness_of :name
  validates_length_of :password, :minimum =>6 

  def num
  	@number=List.where(:user_id => self.id).count
  	return @number
  end
  def ownlist
  	@lists=List.where(:user_id => self.id)
  end
end
