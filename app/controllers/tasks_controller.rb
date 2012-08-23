class TasksController < ApplicationController

  def index
		@unfinished_tasks = Task.where('finished = ?', false)

		respond_with @unfinished_tasks
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
		redirect_to root_url
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
		redirect_to root_url
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
		redirect_to root_url
  end
end
