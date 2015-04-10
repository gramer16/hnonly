class LandscapingsController < ApplicationController
  before_action :set_landscaping, only: [:show, :edit, :update, :destroy]
  
  def search
    if params[:search].present?
      @landscapings = Landscaping.search(params[:search])
    else
      @landscapings = Landscaping.all
    end
  end
  

  def index
    @landscapings = Landscaping.all
  end

  def show
  end

  def new
    @landscaping = Landscaping.new
  end

  def edit
  end

  def create
    @landscaping = Landscaping.new(landscaping_params)
    @landscaping.user_id = current_user.id
    respond_to do |format|
      if @landscaping.save
        format.html { redirect_to @landscaping, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @landscaping }
      else
        format.html { render :new }
        format.json { render json: @landscaping.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @landscaping.update(landscaping_params)
        format.html { redirect_to  @landscaping, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @landscaping }
      else
        format.html { render :edit }
        format.json { render json:  @landscaping.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @landscaping.destroy
      respond_to do |format|
      format.html { redirect_to @landscaping_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_landscaping
      @landscaping = Landscaping.find(params[:id])
    end

    def landscaping_params
      params.require(:landscaping).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
