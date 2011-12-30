class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #Just for Restful_Authentication plugin
  include AuthenticatedSystem
  
end
