class UserObserver < ActiveRecord::Observer
#Pay attention, may be this is not an issue for everybody, but if you should have 
#problems, that the sent activation_code does match with that in the database stored, 
#reload your user object before sending its data through email something like:
#当发生上述情况时，使用被注释的代码替换所有未注释的代码

  def after_create(user)
    #UserMailer.signup_notification(user).deliver
    #user.reload
    #UserMailer.deliver_signup_notification(user)
  end

  def after_save(user)
    #UserMailer.activation(user).deliver if user.recently_activated?
    #user.reload
    #UserMailer.deliver_activation(user) if user.recently_activated?
  end

end
