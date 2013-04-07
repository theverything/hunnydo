class TodosController < ApplicationController
  def index
    @unique_hash = RandomHash.new
  end

  def show
    valid_hash = RandomHash.new(params[:hash])
    if valid_hash.valid?
      @todo = Todo.where(task_hash: valid_hash.random_hash).order('created_at DESC')
    else
      redirect_to "/oops/#{valid_hash.random_hash}"
    end
  end

  def new
    @todo = Todo.new do |t|
      t.task_hash = params[:task_hash]
      t.task = params[:task]
    end
    @todo.save
    redirect_to "/#{params[:task_hash]}"
  end

  def oops
    
  end
end
