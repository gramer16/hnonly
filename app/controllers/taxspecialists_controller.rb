class TaxspecialistsController < ApplicationController
  before_action :set_taxspecialist, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
       @taxspecialists = Taxspecialist.search(params[:search])
    else
       @taxspecialists = Taxspecialist.all
    end
  end


  def index
    @taxspecialists = Taxspecialist.all
  end

  def show
  end

  def new
    @taxspecialist = Taxspecialist.new
  end

  def edit
  end

  def create
     @taxspecialist = Taxspecialist.new(taxspecialist_params)
     @taxspecialist.user_id = current_user.id
    respond_to do |format|
      if @taxspecialist.save
        format.html { redirect_to @taxspecialist, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @taxspecialist }
      else
        format.html { render :new }
        format.json { render json: @taxspecialist.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @taxspecialist.update(taxspecialist_params)
        format.html { redirect_to @taxspecialist, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxspecialist }
      else
        format.html { render :edit }
        format.json { render json: @taxspecialist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @taxspecialist.destroy
    respond_to do |format|
      format.html { redirect_to taxspecialist_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_taxspecialist
      @taxspecialist = Taxspecialist.find(params[:id])
    end

    def taxspecialist_params
      params.require(:taxspecialist).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
    def check_user
      if current_user != @subscriptionpackage.user
        redirect_to root_url, alert: "Sorry, this listing belongs to someone else"
      end
  end
end
