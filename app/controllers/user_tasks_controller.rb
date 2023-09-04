
class UserTasksController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @user_tasks = current_user.user_tasks.order(:id)
  end

  def update
    @user_task = UserTask.find(params[:id])
    @user_task.update(status: !@user_task.status)
    head :no_content
  end

  private

  def task_params
    params.require(:task).permit(:status)
  end
end
