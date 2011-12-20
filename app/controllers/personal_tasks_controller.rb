class PersonalTasksController < ApplicationController
  # GET /personal_tasks
  # GET /personal_tasks.json
  def index
    @personal_tasks = PersonalTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_tasks }
    end
  end

  # GET /personal_tasks/1
  # GET /personal_tasks/1.json
  def show
    @personal_task = PersonalTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_task }
    end
  end

  # GET /personal_tasks/new
  # GET /personal_tasks/new.json
  def new
    @personal_task = PersonalTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_task }
    end
  end

  # GET /personal_tasks/1/edit
  def edit
    @personal_task = PersonalTask.find(params[:id])
  end

  # POST /personal_tasks
  # POST /personal_tasks.json
  def create
    @personal_task = PersonalTask.new(params[:personal_task])

    respond_to do |format|
      if @personal_task.save
        format.html { redirect_to @personal_task, notice: 'Personal Task was successfully created !!' }
        format.json { render json: @personal_task, status: :created, location: @personal_task }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_tasks/1
  # PUT /personal_tasks/1.json
  def update
    @personal_task = PersonalTask.find(params[:id])

    respond_to do |format|
      if @personal_task.update_attributes(params[:personal_task])
        format.html { redirect_to @personal_task, notice: 'Personal task was successfully updated !!' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_tasks/1
  # DELETE /personal_tasks/1.json
  def destroy
    @personal_task = PersonalTask.find(params[:id])
    @personal_task.destroy

    respond_to do |format|
      format.html { redirect_to personal_tasks_url }
      format.json { head :ok }
    end
  end
end

