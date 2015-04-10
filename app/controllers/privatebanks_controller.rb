class PrivatebanksController < ApplicationController
  before_action :set_privatebank, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @privatebanks = Privatebank.search(params[:search])
    else
     @privatebanks = Privatebank.all
    end
  end

  def index
    @privatebanks = Privatebank.all
  end

  def show
  end

  def new
    @privatebank = Privatebank.new
  end

  def edit
  end

  def create
     @privatebank = Privatebank.new(privatebank_params)
     @privatebank.user_id = current_user.id
    respond_to do |format|
      if @privatebank.save
        format.html { redirect_to @privatebank, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @privatebank }
      else
        format.html { render :new }
        format.json { render json: @privatebank.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if   @privatebank.update(privatebank_params)
        format.html { redirect_to @privatebank, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @privatebank}
      else
        format.html { render :edit }
        format.json { render json: @privatebank.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
   @privatebank.destroy
    respond_to do |format|
      format.html { redirect_to privatebank_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_privatebank
      @privatebank = Privatebank.find(params[:id])
    end

    def privatebank_params
      params.require(:privatebank).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
