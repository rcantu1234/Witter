class TodoItemsController < ApplicationController
  def index
    @new_wits = NewWit.all
  end

  def new
  end

  def create
    @new_wit = NewWit.new(wit_new_params)
    if @new_wit.save
      respond_to do |format|
        format.json { render json: @todo, status: :created, message: "Success" }
        format.html { redirect_to todo_items_path, notice: 'Successfully Created!' }
      end
    else
      respond_to do |format|
        format.json { render json: @todo.errors, staus: :created, message: "Success"}
        format.html { redirect_to :back, alert: 'Error Occured!' }
      end
    end
  end

  def show
  end

  def destroy
  end
end

private

def todo_items_params
  params.require(:new_wit).permit(:message)
end
