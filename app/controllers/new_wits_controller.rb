class NewWitsController < ApplicationController
  def index
    @new_wits = NewWit.all
    @new_wit = NewWit.new
  end

  def new
    @new_wits = NewWit.all
    @new_wit = NewWit.new
  end

  def create
    @new = NewWit.new(new_wits_params)
    if @new.save
      respond_to do |format|
        format.json { render json: @new, status: :created, message: "Success" }
        format.html { redirect_to @new, notice: 'Successfully Created!' }
      end
    else
      respond_to do |format|
        format.json { render json: @new.errors, status: :created, message: "Success"}
        format.html { redirect_to :back, alert: 'Error Occured!' }
      end
    end
  end

  def show
  end

  def destroy
     @wit.destroy
    respond_to do |format|
      format.html { redirect_to wits_url, notice: 'Wit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

private

def new_wits_params
  params.require(:new_wit).permit(:message)
end
