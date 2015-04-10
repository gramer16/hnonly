class PropertymanagementfirmsController < ApplicationController
  before_action :set_propertymanagementfirm, only: [:show, :edit, :update, :destroy]
  
   def search
    if params[:search].present?
     @propertymanagementfirms = Propertymanagementfirm.search(params[:search])
    else
     @propertymanagementfirms = Propertymanagementfirm.all
    end
  end
  

  def index
    @propertymanagementfirms = Propertymanagementfirm.all
  end

  def show
  end

  def new
    @propertymanagementfirm = Propertymanagementfirm.new
  end

  def edit
  end

  def create

    @propertymanagementfirm = Propertymanagementfirm.new(propertymanagementfirm_params)
     @propertymanagementfirm.user_id = current_user.id
    respond_to do |format|
      if @propertymanagementfirm.save
        format.html { redirect_to @propertymanagementfirm, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @propertymanagementfirm }
      else
        format.html { render :new }
        format.json { render json: @propertymanagementfirm.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if   @propertymanagementfirm.update(propertymanagementfirm_params)
        format.html { redirect_to @propertymanagementfirm, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @propertymanagementfirm}
      else
        format.html { render :edit }
        format.json { render json: @propertymanagementfirm.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @propertymanagementfirm.destroy
    respond_to do |format|
      format.html { redirect_to propertymanagementfirm_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_propertymanagementfirm
      @propertymanagementfirm = Propertymanagementfirm.find(params[:id])
    end

    def propertymanagementfirm_params
      params.require(:propertymanagementfirm).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
    
end
