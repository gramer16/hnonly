class GeneralcontractorsController < ApplicationController
  before_action :set_generalcontractor, only: [:show, :edit, :update, :destroy]
   def search
    if params[:search].present?
      @generalcontractors = Generalcontractor.search(params[:search])
    else
      @generalcontractors = Generalcontractor.all
    end
  end
  


  def index
    @generalcontractors = Generalcontractor.all
  end

  def show
  end

  def new
    @generalcontractor = Generalcontractor.new
  end

  def edit
  end

  def create
    @generalcontractor = Generalcontractor.new(generalcontractor_params)
    @generalcontractor.user_id = current_user.id
    respond_to do |format|
      if @generalcontractor.save
        format.html { redirect_to @generalcontractor, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @generalcontractor }
      else
        format.html { render :new }
        format.json { render json: @generalcontractor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if   @generalcontractor.update(generalcontractor_params)
        format.html { redirect_to @generalcontractor, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @generalcontractor }
      else
        format.html { render :edit }
        format.json { render json:  @generalcontractor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @generalcontractor.destroy
      respond_to do |format|
      format.html { redirect_to @generalcontractor_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_generalcontractor
      @generalcontractor = Generalcontractor.find(params[:id])
    end

    def generalcontractor_params
      params.require(:generalcontractor).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
    def check_user
      unless current_user.admin?
        redirect_to root_url, alert: "Sorry, this service just can be post by the Website Administrator"
      end
    end
end
