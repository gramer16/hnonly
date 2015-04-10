class CashbuyersController < ApplicationController
  before_action :set_cashbuyer, only: [:show, :edit, :update, :destroy]
def search
    if params[:search].present?
     @cashbuyers = Cashbuyer.search(params[:search])
    else
      @cashbuyers = Cashbuyer.all
    end
  end

  def autocomplete
    render json: Cashbuyer.search(params[:query], fields:[{name: :text_start}], limit: 10).map(&:name)
  end
  


  def index
    @cashbuyers = Cashbuyer.all
  end

  def show
  end

  def new
    @cashbuyer = Cashbuyer.new
  end

  def edit
  end

  def create
    @cashbuyer = Cashbuyer.new(cashbuyer_params)
     @residential.user_id = current_user.id
    respond_to do |format|
      if @cashbuyer.save
        format.html { redirect_to  @cashbuyer, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @cashbuyer }
      else
        format.html { render :new }
        format.json { render json:  @cashbuyer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
     respond_to do |format|
      if   @cashbuyer.update(countertop_params)
        format.html { redirect_to  @cashbuyer, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:   @cashbuyer }
      else
        format.html { render :edit }
        format.json { render json:   @cashbuyer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cashbuyer.destroy
      respond_to do |format|
      format.html { redirect_to  @cashbuyer_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end


  private
    def set_cashbuyer
      @cashbuyer = Cashbuyer.find(params[:id])
    end

    def cashbuyer_params
      params.require(:cashbuyer).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email)
    end
    
  end
