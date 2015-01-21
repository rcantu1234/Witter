class WitsController < ApplicationController
  before_action :set_wit, only: [:show, :edit, :update, :destroy]

  # GET /wits
  # GET /wits.json
  def index
    @wits = Wit.all
  end

  # GET /wits/1
  # GET /wits/1.json
  def show
  end

  # GET /wits/new
  def new
    @wit = Wit.new
  end

  # GET /wits/1/edit
  def edit
  end

  # POST /wits
  # POST /wits.json
  def create
    @wit = Wit.new(wit_params)

    respond_to do |format|
      if @wit.save
        format.html { redirect_to @wit, notice: 'Wit was successfully created.' }
        format.json { render :show, status: :created, location: @wit }
      else
        format.html { render :new }
        format.json { render json: @wit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wits/1
  # PATCH/PUT /wits/1.json
  def update
    respond_to do |format|
      if @wit.update(wit_params)
        format.html { redirect_to @wit, notice: 'Wit was successfully updated.' }
        format.json { render :show, status: :ok, location: @wit }
      else
        format.html { render :edit }
        format.json { render json: @wit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wits/1
  # DELETE /wits/1.json
  def destroy
    @wit.destroy
    respond_to do |format|
      format.html { redirect_to wits_url, notice: 'Wit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wit
      @wit = Wit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wit_params
      params[:wit].permit(:message)
    end
end
