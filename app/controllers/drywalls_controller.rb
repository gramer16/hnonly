class DrywallsController < ApplicationController
  before_action :set_drywall, only: [:show, :edit, :update, :destroy]
  
  def search
    if params[:search].present?
     @drywalls = Drywall.search(params[:search])
    else
      @drywalls = Drywall.all
    end
  end

  def autocomplete
    render json: Drywall.search(params[:query], fields:[{name: :text_start}], limit: 10).map(&:name)
  end


  def index
    @drywalls = Drywall.all
  end

  def show
  end

  def new
    @drywall = Drywall.new
  end

  def edit
  end

  def create
    @drywall = Drywall.new(drywall_params)
    @drywall.user_id = current_user.id
    respond_to do |format|
      if  @flooring.save
        format.html { redirect_to  @drywall, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location:  @drywall }
      else
        format.html { render :new }
        format.json { render json:  @drywall.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @drywall.update(drywall_params)
        format.html { redirect_to @drywall, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @drywall }
      else
        format.html { render :edit }
        format.json { render json:  @drywall.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
       @drywall.destroy
      respond_to do |format|
      format.html { redirect_to @drywall_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_drywall
      @drywall = Drywall.find(params[:id])
    end

    def drywall_params
      params.require(:drywall).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
    
end
