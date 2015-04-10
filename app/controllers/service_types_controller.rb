
class ServiceTypesController < ApplicationController
  before_action :set_service_type, only: [:show, :edit, :update, :destroy]
  
  def index
    @service_types = ServiceType.all
  end

  def show
  end

  def new
     @service_type = ServiceType.new
  end

  def edit
  end

  # POST /commercialpropertiesforsales
  # POST /commercialpropertiesforsales.json
  def create
     @service_type = ServiceType.new(service_type_params)
    respond_to do |format|
      if @service_type.save
        format.html { redirect_to @service_type, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service_type }
      else
        format.html { render :new }
        format.json { render json: @service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercialpropertiesforsales/1
  # PATCH/PUT /commercialpropertiesforsales/1.json
  def update
    respond_to do |format|
      if @service_type.update(service_type_params)
        format.html { redirect_to @service_type, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_type }
      else
        format.html { render :edit }
        format.json { render json: @service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercialpropertiesforsales/1
  # DELETE /commercialpropertiesforsales/1.json
  def destroy
    @service_type.destroy
    respond_to do |format|
      format.html { redirect_to service_type_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_type
      @service_type = ServiceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_type_params
      params.require(:service_type).permit(:service_type, :description)
    end

    def check_user
      if current_user != @service_type.user
        redirect_to root_url, alert: "Sorry, this service belongs to someone else"
      end
    end
end



 


    