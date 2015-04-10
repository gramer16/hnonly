class RoofingsController < ApplicationController
  before_action :set_roofing, only: [:show, :edit, :update, :destroy]

  def search
    if params[:search].present?
      @roofings = Roofing.search(params[:search])
    else
      @roofings = Roofing.all
    end
  end

  def index
    @roofings = Roofing.all
  end

  def show
  end

  def new
    @roofing = Roofing.new
  end

  def edit
  end

  def create
     @roofing = Roofing.new(roofing_params)
     @roofing.user_id = current_user.id
    respond_to do |format|
      if @roofing.save
        format.html { redirect_to @roofing, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @roofing }
      else
        format.html { render :new }
        format.json { render json: @roofing.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @roofing.update(roofing_params)
        format.html { redirect_to @roofing, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @roofing }
      else
        format.html { render :edit }
        format.json { render json: @roofing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @roofing.destroy
    respond_to do |format|
      format.html { redirect_to roofing_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_roofing
      @roofing = Roofing.find(params[:id])
    end

    def roofing_params
      params.require(:roofing).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
