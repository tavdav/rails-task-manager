class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]


  # all tasks
  def index
    @tasks = Task.all
  end
  # display task
  def show
  end
  # new task
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)

    # no need for app/views/restaurants/create.html.erb
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end
