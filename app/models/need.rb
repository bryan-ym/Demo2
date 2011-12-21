class Need < ActiveRecord::Base
  before_save :append_review
  attr_accessor :newcomment, :new_opinion
  
  private

  def append_review
  #@need = Need.find(3)
    self.comment=self.comment+"\n"+newcomment.to_s+"-User Name"+"-Date/Time"
    
  end
  
end
