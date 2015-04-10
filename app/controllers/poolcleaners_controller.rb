class PoolcleanersController < ApplicationController
  before_action :set_poolcleaner, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @poolcleaners = Poolcleaner.search(params[:search])
    else
      @poolcleaners = Poolcleaner.all
    end
  end

  def index
    @poolcleaners = Poolcleaner.all
  end

  def show
  end

  def new
    @poolcleaner = Poolcleaner.new
  end

  def edit
  end

  def create
     @poolcleaner = Poolcleaner.new(poolcleaner_params)
     @poolcleaner.user_id = current_user.id
    respond_to do |format|
      if @poolcleaner.save
        format.html { redirect_to @poolcleaner, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @poolcleaner }
      else
        format.html { render :new }
        format.json { render json: @poolcleaner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if    @poolcleaner.update(poolcleaner_params)
        format.html { redirect_to @poolcleaner, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @poolcleaner }
      else
        format.html { render :edit }
        format.json { render json: @poolcleaner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
      @poolcleaner.destroy
    respond_to do |format|
      format.html { redirect_to @poolcleaner_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_poolcleaner
      @poolcleaner = Poolcleaner.find(params[:id])
    end

    def poolcleaner_params
      params.require(:poolcleaner).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
