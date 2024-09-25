class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to index_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :details)
  end
end
