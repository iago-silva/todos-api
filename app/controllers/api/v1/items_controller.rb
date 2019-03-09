class Api::V1::ItemsController < ApplicationController
  before_action :set_todo
  before_action :set_item, only: [:show, :update, :destroy]

  def index
    json_response(@todo.items)
  end

  def show
    json_response(@item)
  end

  def create
    @todo.items.create!(item_params)
    json_response(@todo, :created)
  end

  def update
    @item.update!(item_params)
    head :no_content
  end

  def destroy
    @item.destroy!
    head :no_content
  end

  private

  def set_todo
    @todo = Todo.find(params[:todo_id])
  end

  def set_item
    @item = @todo.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :done)
  end
end
