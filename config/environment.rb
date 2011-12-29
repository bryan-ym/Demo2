# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Demo2::Application.initialize!

#按restful-authenticated要求增加的路由
#config.active_record.observers = :user_observer
