class StagingsController < ApplicationController
  before_action :set_staging, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
       @stagings = Staging.search(params[:search])
    else
       @stagings = Staging.all
    end
  end
  
  def index
    @stagings = Staging.all
  end

  def show
  end

  def new
    @staging = Staging.new
  end

  def edit
  end

  def create
    @staging = Staging.new(staging_params)
     @staging.user_id = current_user.id
    respond_to do |format|
      if @staging.save
        format.html { redirect_to @staging, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @staging }
      else
        format.html { render :new }
        format.json { render json: @staging.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @staging.update(staging_params)
        format.html { redirect_to @staging, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @staging }
      else
        format.html { render :edit }
        format.json { render json: @staging.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @staging.destroy
    respond_to do |format|
      format.html { redirect_to staging_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_staging
      @staging = Staging.find(params[:id])
    end

    def staging_params
      params.require(:staging).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
