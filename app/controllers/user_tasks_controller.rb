
class UserTasksController < ApplicationController
  protect_from_forgery with: :null_session
  # def controller
  # end

  def index
    @user_tasks = UserTask.all

  end

  def update
      @user_task = UserTask.find(params[:id])
      @user_task.update(status: !@user_task.status)

      redirect_to user_tasks_path
    # if @task.update(task_params)

    # # respond_to do |format|
    # #   format.html { redirect_to tasks_path, notice: 'Task is completed.' }
    # #   format.js
    # # end
    # else
    # #something something here
    # end
  end

  private

  def task_params
    params.require(:task).permit(:status)
  end
end
