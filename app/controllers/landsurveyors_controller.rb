class LandsurveyorsController < ApplicationController
  before_action :set_landsurveyor, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @landsurveyors = Landsurveyor.search(params[:search])
    else
      @landsurveyors = Landsurveyor.all
    end
  end


  def index
    @landsurveyors = Landsurveyor.all
  end

  def show
  end

  def new
    @landsurveyor = Landsurveyor.new
  end

  def edit
  end

  def create
    @landsurveyor = Landsurveyor.new(landsurveyor_params)
    @landsurveyor.user_id = current_user.id
    respond_to do |format|
      if @landsurveyor.save
        format.html { redirect_to @landsurveyor, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @landsurveyor }
      else
        format.html { render :new }
        format.json { render json: @landsurveyor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @landsurveyor.update(landsurveyor_params)
        format.html { redirect_to  @landsurveyor, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @landsurveyor }
      else
        format.html { render :edit }
        format.json { render json:  @landsurveyor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @landsurveyor.destroy
      respond_to do |format|
      format.html { redirect_to @landsurveyor_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_landsurveyor
      @landsurveyor = Landsurveyor.find(params[:id])
    end

    def landsurveyor_params
      params.require(:landsurveyor).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
