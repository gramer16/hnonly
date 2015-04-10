class InteriordesignersController < ApplicationController
  before_action :set_interiordesigner, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @interiordesigners = Interiordesigner.search(params[:search])
    else
      @interiordesigners = Interiordesigner.all
    end
  end



  def index
    @interiordesigners = Interiordesigner.all
  end

  def show
  end

  def new
    @interiordesigner = Interiordesigner.new
  end

  def edit
  end

  def create
    @interiordesigner = Interiordesigner.new(interiordesigner_params)
    @interiordesigner.user_id = current_user.id
    respond_to do |format|
      if @interiordesigner.save
        format.html { redirect_to @interiordesigner, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @interiordesigner }
      else
        format.html { render :new }
        format.json { render json: @interiordesigner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @interiordesigner.update(interiordesigner_params)
        format.html { redirect_to  @interiordesigner, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @interiordesigner }
      else
        format.html { render :edit }
        format.json { render json:  @interiordesigner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
      @interiordesigner.destroy
      respond_to do |format|
      format.html { redirect_to @interiordesigner_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_interiordesigner
      @interiordesigner = Interiordesigner.find(params[:id])
    end

    def interiordesigner_params
      params.require(:interiordesigner).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
