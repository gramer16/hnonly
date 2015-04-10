class TitlecompaniesController < ApplicationController
  before_action :set_titlecompany, only: [:show, :edit, :update, :destroy]
  
  def search
    if params[:search].present?
       @titlecompanies = Titlecompany.search(params[:search])
    else
       @titlecompanies = Titlecompany.all
    end
  end


  def index
    @titlecompanies = Titlecompany.all
  end

  def show
  end

  def new
    @titlecompany = Titlecompany.new
  end

  def edit
  end

  def create
   @titlecompany = Titlecompany.new(titlecompany_params)
     @titlecompany.user_id = current_user.id
    respond_to do |format|
      if @titlecompany.save
        format.html { redirect_to @titlecompany, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @titlecompany }
      else
        format.html { render :new }
        format.json { render json: @titlecompany.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @titlecompany.update(titlecompany_params)
        format.html { redirect_to @titlecompany, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @titlecompany }
      else
        format.html { render :edit }
        format.json { render json: @titlecompany.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @titlecompany.destroy
    respond_to do |format|
      format.html { redirect_to titlecompany_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_titlecompany
      @titlecompany = Titlecompany.find(params[:id])
    end

    def titlecompany_params
      params.require(:titlecompany).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
