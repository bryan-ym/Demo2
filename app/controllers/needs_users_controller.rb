class NeedsUsersController < ApplicationController
  
  def index
    #if current_user.login.downcase=="admin"
      @needs_users=NeedsUsers.all
    #else
     
    #end
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @needs_users }
    end
  end
end
