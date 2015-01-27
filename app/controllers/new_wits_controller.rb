class NewWitsController < ApplicationController
  def index
    @new_wits = NewWit.all
  end

  def new
  end

  def create
    @new_wit = NewWit.new(new_wits_params)
    if @new_wit.save
      respond_to do |format|
        format.json { render json: @new_wit, status: :created, message: "Success" }
        format.html { redirect_to @new_wit, notice: 'Successfully Created!' }
      end
    else
      respond_to do |format|
        format.json { render json: @new_wit.errors, staus: :created, message: "Success"}
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

def new_wits_params
  params.require(:new_wit).permit(:message)
end
