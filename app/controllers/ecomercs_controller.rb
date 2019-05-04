class EcomercsController < ApplicationController
  before_action :set_ecomerc, only: [:show, :edit, :update, :destroy]

  # GET /ecomercs
  # GET /ecomercs.json
  def index
    @ecomercs = Ecomerc.all
  end

  # GET /ecomercs/1
  # GET /ecomercs/1.json
  def show
  end

  # GET /ecomercs/new
  def new
    @ecomerc = Ecomerc.new
  end

  # GET /ecomercs/1/edit
  def edit
  end

  # POST /ecomercs
  # POST /ecomercs.json
  def create
    @ecomerc = Ecomerc.new(ecomerc_params)

    respond_to do |format|
      if @ecomerc.save
        format.html { redirect_to @ecomerc, notice: 'Ecomerc was successfully created.' }
        format.json { render :show, status: :created, location: @ecomerc }
      else
        format.html { render :new }
        format.json { render json: @ecomerc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecomercs/1
  # PATCH/PUT /ecomercs/1.json
  def update
    respond_to do |format|
      if @ecomerc.update(ecomerc_params)
        format.html { redirect_to @ecomerc, notice: 'Ecomerc was successfully updated.' }
        format.json { render :show, status: :ok, location: @ecomerc }
      else
        format.html { render :edit }
        format.json { render json: @ecomerc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecomercs/1
  # DELETE /ecomercs/1.json
  def destroy
    @ecomerc.destroy
    respond_to do |format|
      format.html { redirect_to ecomercs_url, notice: 'Ecomerc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecomerc
      @ecomerc = Ecomerc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ecomerc_params
      params.require(:ecomerc).permit(:name, :location, :department_id)
    end
end
