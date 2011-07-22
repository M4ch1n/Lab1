class Transaction < ActiveRecord::Base
  belongs_to :profile
  
  validates :profile_id, :presence => true
  validates :amount, :presence => true,:numericality => true
  validate  :profile_exista
  
  def profile_exista
    errors.add(:profile_id, "must be selected!!!") if profile_id == -1
  end
  
  
end
