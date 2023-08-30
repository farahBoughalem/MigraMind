class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    # Create a profile for the user
    Task.all.each do |task|
      user_task = UserTask.new
      user_task.task = task
      user_task.user = current_user
      user_task.status = 0
      user_task.save
    end
    # Redirect to the desired path after sign up
    root_path
  end
end
