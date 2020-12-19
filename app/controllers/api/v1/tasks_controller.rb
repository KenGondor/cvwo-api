class Api::V1::TasksController < ApplicationController
  def index
    tasks = Task.all

    render json: TaskSerializer.new(tasks).serializable_hash.to_json, statsu: 200
  end
  
  def show
    task = Task.find(params[:id])

    render json: TaskSerializer.new(task).serializable_hash.to_json, status: 200
  end

  def create
    task = Task.new(task_params)

    if task.save
        render json: TaskSerializer.new(task).serializable_hash.to_json
    else
        render json: { error: task.errors.messages }, status: 422
    end
  end

  def update
    task = Task.find(params[:id])

    if task.update(task_params)
      render json: TaskSerializer.new(task).serializable_hash.to_json
    else
      render json: { error: task.errors.messages }, status: 422
    end
  end

  def destroy
    task = Task.find(params[:id])

    task.destroy
    render json: TaskSerializer.new(task).serializable_hash.to_json
  end

  private 

  def task_params
    Rails.logger.debug params.inspect

    params.permit(:name, :start, :due, :priority, :description)
  end
end
