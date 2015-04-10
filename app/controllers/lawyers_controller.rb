class LawyersController < ApplicationController
  before_action :set_lawyer, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @lawyers = Lawyer.search(params[:search])
    else
      @lawyers = Lawyer.all
    end
  end
  

  def index
    @lawyers = Lawyer.all
    
  end

  def show
    
  end

  def new
    @lawyer = Lawyer.new
  end

  def edit
  end

  def create
    @lawyer = Lawyer.new(lawyer_params)
    @lawyer.user_id = current_user.id
    respond_to do |format|
      if @lawyer.save
        format.html { redirect_to @lawyer, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @lawyer }
      else
        format.html { render :new }
        format.json { render json: @lawyer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if   @lawyer.update(lawyer_params)
        format.html { redirect_to  @lawyer, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @lawyer }
      else
        format.html { render :edit }
        format.json { render json:  @lawyer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @lawyer.destroy
      respond_to do |format|
      format.html { redirect_to @lawyer_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_lawyer
      @lawyer = Lawyer.find(params[:id])
    end

    def lawyer_params
      params.require(:lawyer).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
