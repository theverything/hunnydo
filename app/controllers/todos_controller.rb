class TodosController < ApplicationController
  def index
  end

  def show
    @todo = Todo.where(hash: params[:hash], task_done: false).order('created_at DESC')
  end
end
