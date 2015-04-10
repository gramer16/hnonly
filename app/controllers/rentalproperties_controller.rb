class RentalpropertiesController < ApplicationController
  before_action :set_rentalproperty, only: [:show, :edit, :update, :destroy]
  
  def search
    if params[:search].present?
     @rentalproperties = Rentalproperty.search(params[:search])
    else
     @rentalproperties = Rentalproperty.all
    end
  end


  def index
    @rentalproperties = Rentalproperty.all
  end

  def show
  end

  def new
    @rentalproperty = Rentalproperty.new
  end

  def edit
  end

  def create
     @rentalproperty = Rentalproperty.new(rentalproperty_params)
     @rentalproperty.user_id = current_user.id
    respond_to do |format|
      if @rentalproperty.save
        format.html { redirect_to @rentalproperty, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @rentalproperty }
      else
        format.html { render :new }
        format.json { render json: @rentalproperty.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
     respond_to do |format|
      if   @rentalproperty.update(rentalproperty_params)
        format.html { redirect_to @rentalproperty, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @rentalproperty }
      else
        format.html { render :edit }
        format.json { render json: @rentalproperty.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rentalproperty.destroy
    respond_to do |format|
      format.html { redirect_to rentalproperty_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }

  end
end

  private
    def set_rentalproperty
      @rentalproperty = Rentalproperty.find(params[:id])
    end

    def rentalproperty_params
      params.require(:rentalproperty).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
