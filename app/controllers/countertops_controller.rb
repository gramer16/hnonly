class CountertopsController < ApplicationController
  before_action :set_countertop, only: [:show, :edit, :update, :destroy]
  
  def search
    if params[:search].present?
     @countertops = Countertop.search(params[:search])
    else
      @countertops = Countertop.all
    end
  end

  def autocomplete
    render json: Countertop.search(params[:query], fields:[{name: :text_start}], limit: 10).map(&:name)
  end
  

  def index
    @countertops = Countertop.all
  end

  def show
  end

  def new
    @countertop = Countertop.new
  end

  def edit
  end

  def create
    @countertop = Countertop.new(countertop_params)
    respond_to do |format|
      if @countertop.save
        format.html { redirect_to  @countertop, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @countertop }
      else
        format.html { render :new }
        format.json { render json:  @countertop.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if   @countertop.update(countertop_params)
        format.html { redirect_to @countertop, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @countertop }
      else
        format.html { render :edit }
        format.json { render json:  @countertop.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @countertop.destroy
      respond_to do |format|
      format.html { redirect_to  @countertop_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_countertop
      @countertop = Countertop.find(params[:id])
    end

    def countertop_params
      params.require(:countertop).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
    
end
