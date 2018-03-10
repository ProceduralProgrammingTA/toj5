class Manage::TasksController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_task_params

  def new
  end

  def create
    @task = Task.new(@task_params)
    # transaction を考える
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_task_params
    @task_params = params[:task].permit(:title, :deadline, :description)
  end
end
