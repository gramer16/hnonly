class AccountantsController < ApplicationController
  before_action :set_accountant, only: [:show, :edit, :update, :destroy]

  def search
    if params[:search].present?
      @accountants = Accountant.search(params[:search])
    else
      @accountants = Accountant.all
    end
  end
  def autocomplete
    render json: Accountant.search(params[:query], fields:[{name: :text_start}], limit: 10).map(&:name)
  end

  def index
    @accountants = Accountant.all
  end

  def show
  end

  def new
    @accountant = Accountant.new
  end

  def edit
  end

  def create
    @accountant = Accountant.new(accountant_params)
    respond_to do |format|
      if  @accountant.save
        format.html { redirect_to  @accountant, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location:  @accountant }
      else
        format.html { render :new }
        format.json { render json:   @accountant.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
     respond_to do |format|
      if   @accountant.update(accountant_params)
        format.html { redirect_to   @accountant, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:    @accountant }
      else
        format.html { render :edit }
        format.json { render json:   @accountant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @accountant.destroy
      respond_to do |format|
      format.html { redirect_to  @accountant_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_accountant
      @accountant = Accountant.find(params[:id])
    end

    def accountant_params
      params.require(:accountant).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
