class CommercialpropertiesforsalesController < ApplicationController
  before_action :set_commercialpropertiesforsale, only: [:show, :edit, :update, :destroy]
  #before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  #before_filter :check_user, only: [:edit, :update, :destroy]
  # GET /commercialpropertiesforsales
  # GET /commercialpropertiesforsales.json
  def search
    if params[:search].present?
     @commercialpropertiesforsales = Commercialpropertiesforsale.search(params[:search])
    else
      @commercialpropertiesforsales = Commercialpropertiesforsale.all
    end
  end

  def autocomplete
    render json: Commercialpropertiesforsale.search(params[:query], fields:[{name: :text_start}], limit: 10).map(&:name)
  end





  def index
    @commercialpropertiesforsales = Commercialpropertiesforsale.all
    @commercialpropertiesforsales = @commercialpropertiesforsales.where(action: params["action"]) if params["action"].present?
    @commercialpropertiesforsales = @commercialpropertiesforsales.where(property_type: params["property_type"]) if params["property_type"].present?
    @commercialpropertiesforsales = @commercialpropertiesforsales.where(status: params["status"]) if params["status"].present?
    @commercialpropertiesforsales = @commercialpropertiesforsales.where(construction_type: params["construction_type"]) if params["construction_type"].present?
  end

  # GET /commercialpropertiesforsales/1
  # GET /commercialpropertiesforsales/1.json
  def show
  end

  # GET /commercialpropertiesforsales/new
  def new
    @commercialpropertiesforsale = Commercialpropertiesforsale.new
  end

  # GET /commercialpropertiesforsales/1/edit
  def edit
  end

  # POST /commercialpropertiesforsales
  # POST /commercialpropertiesforsales.json
  def create
    @commercialpropertiesforsale = Commercialpropertiesforsale.new(commercialpropertiesforsale_params)
     @commercialpropertiesforsale.user_id = current_user.id
    respond_to do |format|
      if @commercialpropertiesforsale.save
        format.html { redirect_to @commercialpropertiesforsale, notice: 'Commercialpropertiesforsale was successfully created.' }
        format.json { render :show, status: :created, location: @commercialpropertiesforsale }
      else
        format.html { render :new }
        format.json { render json: @commercialpropertiesforsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercialpropertiesforsales/1
  # PATCH/PUT /commercialpropertiesforsales/1.json
  def update
    respond_to do |format|
      if @commercialpropertiesforsale.update(commercialpropertiesforsale_params)
        format.html { redirect_to @commercialpropertiesforsale, notice: 'Commercialpropertiesforsale was successfully updated.' }
        format.json { render :show, status: :ok, location: @commercialpropertiesforsale }
      else
        format.html { render :edit }
        format.json { render json: @commercialpropertiesforsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercialpropertiesforsales/1
  # DELETE /commercialpropertiesforsales/1.json
  def destroy
    @commercialpropertiesforsale.destroy
    respond_to do |format|
      format.html { redirect_to commercialpropertiesforsales_url, notice: 'Commercialpropertiesforsale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commercialpropertiesforsale
      @commercialpropertiesforsale = Commercialpropertiesforsale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commercialpropertiesforsale_params
      params.require(:commercialpropertiesforsale).permit(:mls_number, :property_type, :action, :address, :zipcode, :city, :price, :realestatecompany, :officephone, :companywebsite, :listingagent, :emailagent, :agentphone, :assetclass, :totalbuildingSF, :totalunits, :cap_rate, :floorsnumber, :construction_type, :property_description, :parking_total, :elevators, :individual_suiteSQF, :year_completed, :lotsqft, :image)
    end

    def check_user
      if current_user != @commercialpropertiesforsale.user
        redirect_to root_url, alert: "Sorry, this listing belongs to someone else"
      end
    end
end
