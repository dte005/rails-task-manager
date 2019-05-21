class TasksController < ApplicationController
  # Utilizado para ser executado a cada inicializacao
  before_action :set_task, only: [:show, :destroy, :edit, :update]

  def index
    @tasks = Task.all
  end

  def show

  end

  def new
    @task = Task.new
  end

  def create
    # new precisa do save
    # create nao precisa do save
    @task = Task.create(create_task_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    @task.update(create_task_params)
    redirect_to root_path
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  private

  def create_task_params
    # task esta relacionado ao form dinamico
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
