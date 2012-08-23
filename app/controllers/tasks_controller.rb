class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(params[:task])
    @task.save
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end
