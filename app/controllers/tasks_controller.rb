class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def create
    @tasks = Task.all
    @task = Task.new(:name => params[:name], :completion => false)
    @task.save
    render('tasks/index.html.erb')
  end

  def complete
    task = Task.find(params[:id])
    task.update_column(:completion, true)
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  end
