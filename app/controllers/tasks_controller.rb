class TasksController < ApplicationController
  before_action :set_task, only: %i[new create]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = @user
    @task.save
    redirect_to user_path(@user)
  end

  private

  def set_task
    @task = Task.find(params[:user_id])
  end

  def task_params
    params.require(:task).permit(:name, :status)
  end
end
