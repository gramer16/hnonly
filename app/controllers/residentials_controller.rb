class ResidentialsController < ApplicationController
  before_action :set_residential, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]
  # GET /residentials
  # GET /residentials.json
  def search
    if params[:search].present?
      @residentials = Residential.search(params[:search])
    else
      @residentials = Residential.all
    end
  end
  def autocomplete
    render json: Residential.search(params[:query], fields:[{name: :text_start}], limit: 10).map(&:name)
  end

  def bedrooms
    if params[:bedrooms].present?
      @residentials = Residential.bedrooms(params[:bedrooms])
    else
      @residentials = Residential.all
    end
  end
  
  def index
    @residentials = Residential.all
    @residentials = @residentials.where(bedrooms: params["bedrooms"]) if params["bedrooms"].present?
    @residentials = @residentials.where(full_bathrooms: params["full_bathrooms"]) if params["full_bathrooms"].present?
    @residentials = @residentials.where(half_bathrooms: params["half_bathrooms"]) if params["half_bathrooms"].present?
    @residentials = @residentials.where(action: params["action"]) if params["action"].present?
    @residentials = @residentials.where(property_type: params["property_type"]) if params["property_type"].present?
    @residentials = @residentials.where(status: params["status"]) if params["status"].present?
    @residentials = @residentials.where(construction_type: params["construction_type"]) if params["construction_type"].present?
    @residentials = @residentials.where(florida_mlsarea: params["florida_mlsarea"]) if params["florida_mlsarea"].present?
    @residentials = @residentials.where(foreclosure: params["foreclosure"]) if params["foreclosure"].present?
    @residentials = @residentials.where(square_feet: params["square_feet"]) if params["square_feet"].present?
    @residentials = @residentials.where("price > ?" , params["min_price"]) if params["min_price"].present?
    @residentials = @residentials.where("price < ?" , params["max_price"]) if params["max_price"].present?
    @residentials = @residentials.where("square_feet > ?" , params["min_square_feet"]) if params["min_square_feet"].present?
    @residentials = @residentials.where("square_feet < ?" , params["max_square_feet"]) if params["max_square_feet"].present?
  end
  #def index
  #@search = Residential.search(params[:q])
  #@residentials = @search.result
  #end

  # GET /residentials/1
  # GET /residentials/1.json
  def show
  end

  # GET /residentials/new
  def new
    if current_user.isRealtor?
      @residential = Residential.new
    else
      redirect_to root_url
    end

  end

  # GET /residentials/1/edit
  def edit
  end

  # POST /residentials
  # POST /residentials.json
  def create
    @residential = Residential.new(residential_params)
    @residential.user_id = current_user.id
    respond_to do |format|
      if @residential.save
        format.html { redirect_to @residential, notice: 'Residential was successfully created.' }
        format.json { render :show, status: :created, location: @residential }
      else
        format.html { render :new }
        format.json { render json: @residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residentials/1
  # PATCH/PUT /residentials/1.json
  def update
    respond_to do |format|
      if @residential.update(residential_params)
        format.html { redirect_to @residential, notice: 'Residential was successfully updated.' }
        format.json { render :show, status: :ok, location: @residential }
      else
        format.html { render :edit }
        format.json { render json: @residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residentials/1
  # DELETE /residentials/1.json
  def destroy
    @residential.destroy
    respond_to do |format|
      format.html { redirect_to residentials_url, notice: 'Residential was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residential
      @residential = Residential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def residential_params
      params.require(:residential).permit(:mls_number, :action, :address, :property_type, :bedrooms, :full_bathrooms, :half_bathrooms, :square_feet, :price, :zip_code, :lot_size, :garage, :construction_type, :stories, :year_built, :private_pool, :area_tennis, :wheelchair, :elevator, :patio_deck, :energy_features, :green_certification, :golf_course, :water_view, :water_front, :foreclosure, :status, :city, :florida_mlsarea, :realorlicense, :realtorname, :realtorphonenumber, :realtoremail, :additionalfeatures, :maintenancefee, :keymap, :realorlicense, :image)
    end

    def check_user
      if current_user != @residential.user
        redirect_to root_url, alert: "Sorry, this listing belongs to someone else"
      end
    end
end
