class SolarscreensController < ApplicationController
  before_action :set_solarscreen, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @solarscreens = Solarscreen.search(params[:search])
    else
      @solarscreens = Solarscreen.all
    end
  end
  
  def index
    @solarscreens = Solarscreen.all
  end

  def show
  end

  def new
    @solarscreen = Solarscreen.new
  end

  def edit
  end

  def create
    @solarscreen = Staging.new(solarscreen_params)
     @solarscreen.user_id = current_user.id
    respond_to do |format|
      if @solarscreen.save
        format.html { redirect_to @solarscreen, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @solarscreen }
      else
        format.html { render :new }
        format.json { render json: @solarscreen.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @solarscreen.update(solarscreen_params)
        format.html { redirect_to @solarscreen, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @solarscreen }
      else
        format.html { render :edit }
        format.json { render json: @solarscreen.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @solarscreen.destroy
    respond_to do |format|
      format.html { redirect_to solarscreen_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_solarscreen
      @solarscreen = Solarscreen.find(params[:id])
    end

    def solarscreen_params
      params.require(:solarscreen).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
