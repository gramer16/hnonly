class PoolrepairsController < ApplicationController
  before_action :set_poolrepair, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @poolrepairs = Poolrepair.search(params[:search])
    else
     @poolrepairs = Poolrepair.all
    end
  end
  
  def index
    @poolrepairs = Poolrepair.all
  end

  def show
  end

  def new
    @poolrepair = Poolrepair.new
  end

  def edit
  end

  def create
     @poolrepair = Poolrepair.new(poolrepair_params)
     @poolrepair.user_id = current_user.id
    respond_to do |format|
      if @poolrepair.save
        format.html { redirect_to @poolrepair, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @poolrepair }
      else
        format.html { render :new }
        format.json { render json: @poolrepair.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if   @poolrepair.update(poolrepair_params)
        format.html { redirect_to @poolrepair, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @poolrepair }
      else
        format.html { render :edit }
        format.json { render json: @poolrepair.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @poolrepair.destroy
    respond_to do |format|
      format.html { redirect_to poolrepair_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_poolrepair
      @poolrepair = Poolrepair.find(params[:id])
    end

    def poolrepair_params
      params.require(:poolrepair).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
