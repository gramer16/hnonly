class HardmoneysController < ApplicationController
  before_action :set_hardmoney, only: [:show, :edit, :update, :destroy]
  
   def search
    if params[:search].present?
      @hardmoneys = Hardmoney.search(params[:search])
    else
      @hardmoneys = Hardmoney.all
    end
  end
  


  def index
    @hardmoneys = Hardmoney.all
  end

  def show
  end

  def new
    @hardmoney = Hardmoney.new
  end

  def edit
  end

  def create
    @hardmoney = Hardmoney.new(hardmoney_params)
    @hardmoney.user_id = current_user.id
    respond_to do |format|
      if @hardmoney.save
        format.html { redirect_to @hardmoney, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @hardmoney }
      else
        format.html { render :new }
        format.json { render json: @hardmoney.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if   @hardmoney.update(hardmoney_params)
        format.html { redirect_to @hardmoney, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @hardmoney }
      else
        format.html { render :edit }
        format.json { render json:  @hardmoney.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
      @hardmoney.destroy
      respond_to do |format|
      format.html { redirect_to @hardmoney_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_hardmoney
      @hardmoney = Hardmoney.find(params[:id])
    end

    def hardmoney_params
      params.require(:hardmoney).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
   
end
