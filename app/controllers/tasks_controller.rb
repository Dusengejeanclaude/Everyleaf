class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @search = Task.ransack(params[:q])
    if params[:q]
      @tasks = @search.result
    elsif params[:sort_by_creation]
    @tasks = Task.order('created_at desc').page(params[:page])
    elsif params[:sort_by_deadline]
      @tasks = Task.order('end_date desc').page(params[:page])
    elsif params[:sort_with]
      @tasks = Task.order('priority desc').page(params[:page])
    else
      @tasks = Task.all.page(params[:page])  
    end
  end 

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create   
    @task = Task.new(task_params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'a Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @task.destroy
    respond_to do |format|
      if current_user.admin?
        format.html { redirect_to admin_users_url, notice: 'Task was successfully destroyed.' }
      else
        format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   
    def set_task
      @task = Task.find(params[:id])
    end

    
    def task_params
      params.require(:task).permit(:name, :status, :start_date, :end_date, :priority, :user_id)
    end
  end
end 