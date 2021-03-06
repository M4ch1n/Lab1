class Profile < ActiveRecord::Base
  
  has_many :transactions
  
  validates_presence_of :name
  validates_presence_of :lastname
  validates_format_of   :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  
  
end
