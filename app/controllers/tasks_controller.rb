class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  # def update
  #   raise
  #   if @task.update(task_params)

  #   respond_to do |format|
  #     format.html { redirect_to tasks_path, notice: 'Task is completed.' }
  #     format.js
  #   end
  #   else
  #   #something something here
  #   end
  # end

  # private

  # def task_params
  #   params.require(:task).permit(:status)
  # end
end
