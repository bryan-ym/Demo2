class Need < ActiveRecord::Base
  has_and_belongs_to_many :users
  
  before_save :append_review
  #after_save :add_user
  attr_accessor :newcomment, :new_opinion
  
    
  def had_user?(user)
    self.users.include?(user)
  end
  
  private

  def append_review
  #@need = Need.find(3)
  if !self.comment.nil?  
    self.comment=self.comment+"\n"+newcomment.to_s+"-User Name"+"-Date/Time"
  end  
end

  
  
  
end
