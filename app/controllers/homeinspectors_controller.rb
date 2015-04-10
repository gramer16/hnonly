class HomeinspectorsController < ApplicationController
  before_action :set_homeinspector, only: [:show, :edit, :update, :destroy]
   def search
    if params[:search].present?
      @homeinspectors = Homeinspector.search(params[:search])
    else
      @homeinspectors = Homeinspector.all
    end
  end
  

  def index
    @homeinspectors = Homeinspector.all
  end

  def show
  end

  def new
    @homeinspector = Homeinspector.new
  end

  def edit
  end

  def create
    @homeinspector = Homeinspector.new(homeinspector_params)
    @homeinspector.user_id = current_user.id
    respond_to do |format|
      if @homeinspector.save
        format.html { redirect_to @homeinspector, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @homeinspector }
      else
        format.html { render :new }
        format.json { render json: @homeinspector.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @homeinspector.update(homeinspector_params)
        format.html { redirect_to  @homeinspector, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @homeinspector }
      else
        format.html { render :edit }
        format.json { render json:  @homeinspector.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
      @homeinspector.destroy
      respond_to do |format|
      format.html { redirect_to @homeinspector_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_homeinspector
      @homeinspector = Homeinspector.find(params[:id])
    end

    def homeinspector_params
      params.require(:homeinspector).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
