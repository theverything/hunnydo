class TodosController < ApplicationController
  def index
  end

  def show
    @todo = Todo.where(task_hash: params[:hash], task_done: false).order('created_at DESC')
  end

  def new
    @todo = Todo.new do |t|
      t.task_hash = params[:task_hash]
      t.task = params[:task]
    end
    @todo.save
    redirect_to "/#{params[:task_hash]}"
  end
end
