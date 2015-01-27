class NewWitsController < ApplicationController
  before_action :set_new_wit, only: [:show, :edit, :update, :destroy]

  # GET /new_wits
  # GET /new_wits.json
  def index
    @new_wits = NewWit.all
    @new_wit = NewWit.new
  end

  # GET /new_wits/1
  # GET /new_wits/1.json
  def show
  end

  # GET /new_wits/new
  def new
    @new_wit = NewWit.new
  end

  # GET /new_wits/1/edit
  def edit
  end

  # POST /new_wits
  # POST /new_wits.json
  def create
    @new_wit = NewWit.new(new_wit_params)

    respond_to do |format|
      if @new_wit.save
        format.html { redirect_to @new_wit, notice: 'New wit was successfully created.' }
        format.json { render :show, status: :created, location: @new_wit }
      else
        format.html { render :new }
        format.json { render json: @new_wit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_wits/1
  # PATCH/PUT /new_wits/1.json
  def update
    respond_to do |format|
      if @new_wit.update(new_wit_params)
        format.html { redirect_to @new_wit, notice: 'New wit was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_wit }
      else
        format.html { render :edit }
        format.json { render json: @new_wit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_wits/1
  # DELETE /new_wits/1.json
  def destroy
    @new_wit.destroy
    respond_to do |format|
      format.html { redirect_to new_wits_url, notice: 'New wit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_wit
      @new_wit = NewWit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_wit_params
      params.require(:new_wit).permit(:message)
    end
end
