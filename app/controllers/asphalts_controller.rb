class AsphaltsController < ApplicationController
  before_action :set_asphalt, only: [:show, :edit, :update, :destroy]
  

def search
    if params[:search].present?
     @asphalts = Asphalt.search(params[:search])
    else
      @asphalts = Asphalt.all
    end
  end

  def autocomplete
    render json: Asphalt.search(params[:query], fields:[{name: :text_start}], limit: 10).map(&:name)
  end


  def index
    @asphalts = Asphalt.all
    
  end

  def show
    
  end

  def new
    @asphalt = Asphalt.new
   
  end

  def edit
  end

  def create
     @asphalt = Asphalt.new(asphalt_params)
    respond_to do |format|
      if @asphalt.save
        format.html { redirect_to  @asphalt, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location:  @asphalt }
      else
        format.html { render :new }
        format.json { render json:  @asphalt.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @asphalt.update(asphalt_params)
        format.html { redirect_to @asphalt, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @asphalt }
      else
        format.html { render :edit }
        format.json { render json: @asphalt.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    @asphalt.destroy
    respond_to do |format|
      format.html { redirect_to asphalt_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_asphalt
      @asphalt = Asphalt.find(params[:id])
    end

    def asphalt_params
      params.require(:asphalt).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
