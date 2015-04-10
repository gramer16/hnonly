class SecuritiesController < ApplicationController
  before_action :set_security, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @securities = Security.search(params[:search])
    else
      @securities = Security.all
    end
  end


  def index
    @securities = Security.all
  end

  def show
  end

  def new
    @security = Security.new
  end

  def edit
  end

  def create
   @security = Staging.new(security_params)
     @security.user_id = current_user.id
    respond_to do |format|
      if @security.save
        format.html { redirect_to @security, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @security }
      else
        format.html { render :new }
        format.json { render json: @security.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @security.update(security_params)
        format.html { redirect_to @security, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @security }
      else
        format.html { render :edit }
        format.json { render json: @security.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @security.destroy
    respond_to do |format|
      format.html { redirect_to security_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_security
      @security = Security.find(params[:id])
    end

    def security_params
      params.require(:security).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
