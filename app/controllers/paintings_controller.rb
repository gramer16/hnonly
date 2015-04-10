class PaintingsController < ApplicationController
  before_action :set_painting, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @paintings = Painting.search(params[:search])
    else
      @paintings = Painting.all
    end
  end


  def index
    @paintings = Painting.all
  end

  def show
  end

  def new
    @painting = Painting.new
  end

  def edit
  end

  def create

     @painting = Painting.new(painting_params)
    @painting.user_id = current_user.id
    respond_to do |format|
      if @painting.save
        format.html { redirect_to @painting, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @painting }
      else
        format.html { render :new }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @painting.update(painting_params)
        format.html { redirect_to @painting, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @painting }
      else
        format.html { render :edit }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @painting.destroy
    respond_to do |format|
      format.html { redirect_to @painting_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_painting
      @painting = Painting.find(params[:id])
    end

    def painting_params
      params.require(:painting).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
