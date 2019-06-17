class InfoSelfCaresController < ApplicationController
  before_action :set_info_self_care, only: [:show, :edit, :update, :destroy]

  # GET /info_self_cares
  # GET /info_self_cares.json
  def index
   

    @info_self_cares = current_user.info_self_cares
    
  end

  # GET /info_self_cares/1
  # GET /info_self_cares/1.json
  def show
  end

  # GET /info_self_cares/new
  def new
    @info_self_care = current_user.info_self_cares.new
  end

  # GET /info_self_cares/1/edit
  def edit
  end

  # POST /info_self_cares
  # POST /info_self_cares.json
  def create
    @info_self_care = current_user.info_self_cares.new(info_self_care_params)

    respond_to do |format|
      if @info_self_care.save
        format.html { redirect_to @info_self_care, notice: 'Info self care was successfully created.' }
        format.json { render :show, status: :created, location: @info_self_care }
      else
        format.html { render :new }
        format.json { render json: @info_self_care.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_self_cares/1
  # PATCH/PUT /info_self_cares/1.json
  def update
    respond_to do |format|
      if @info_self_care.update(info_self_care_params)
        format.html { redirect_to @info_self_care, notice: 'Info self care was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_self_care }
      else
        format.html { render :edit }
        format.json { render json: @info_self_care.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_self_cares/1
  # DELETE /info_self_cares/1.json
  def destroy
    @info_self_care.destroy
    respond_to do |format|
      format.html { redirect_to info_self_cares_url, notice: 'Info self care was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_self_care
      @info_self_care = current_user.info_self_cares.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_self_care_params
      params.require(:info_self_care).permit(:care_name, :time, :date_frome, :date_to, :location, :period, :reminder_time)
    end
end
