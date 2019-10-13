class Api::V1::ItemsSetController < ApplicationController
  before_action :set_todo

  def destroy
    @todo.items.destroy_all
    head :no_content
  end

  private

  def set_todo
    @todo = Todo.find(params[:todo_id])
  end
end
