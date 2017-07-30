class AppserversController < ApplicationController
  before_action :set_appserver, only: [:show, :edit, :update, :destroy]
  before_action :sidebar_data

  # GET /appservers
  # GET /appservers.json
  def index
    @appservers = Appserver.all
  end

  # GET /appservers/1
  # GET /appservers/1.json
  def show
  end

  # GET /appservers/new
  def new
    @appserver = Appserver.new
  end

  # GET /appservers/1/edit
  def edit
  end

  # POST /appservers
  # POST /appservers.json
  def create
    @appserver = Appserver.new(appserver_params)

    respond_to do |format|
      if @appserver.save
        format.html { redirect_to @appserver, notice: 'Appserver was successfully created.' }
        format.json { render :show, status: :created, location: @appserver }
      else
        format.html { render :new }
        format.json { render json: @appserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appservers/1
  # PATCH/PUT /appservers/1.json
  def update
    respond_to do |format|
      if @appserver.update(appserver_params)
        format.html { redirect_to @appserver, notice: 'Appserver was successfully updated.' }
        format.json { render :show, status: :ok, location: @appserver }
      else
        format.html { render :edit }
        format.json { render json: @appserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appservers/1
  # DELETE /appservers/1.json
  def destroy
    @appserver.destroy
    respond_to do |format|
      format.html { redirect_to appservers_url, notice: 'Appserver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appserver
      @appserver = Appserver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appserver_params
      params.require(:appserver).permit(:name, :server_id)
    end
end
