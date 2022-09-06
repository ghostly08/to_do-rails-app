class TasksController < ApplicationController
  before_action :set_user, only: %i[new create destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = @user
    @task.save
    redirect_to user_path(@user)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.user = @user
    @task.update(task_params)

    redirect_to user_path(@user)
  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy

    redirect_to user_path(@user), status: :see_other
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def task_params
    params.require(:task).permit(:name, :status)
  end
end
