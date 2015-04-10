class MoldsController < ApplicationController
  before_action :set_mold, only: [:show, :edit, :update, :destroy]

  def search
    if params[:search].present?
      @molds = Mold.search(params[:search])
    else
      @molds = Mold.all
    end
  end
  

  def index
    @molds = Mold.all
  end

  def show
  end

  def new
    @mold = Mold.new
  end

  def edit
  end

  def create
    @mold = Mold.new(mold_params)
    @mold.user_id = current_user.id
    respond_to do |format|
      if @mold.save
        format.html { redirect_to @mold, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @mold }
      else
        format.html { render :new }
        format.json { render json: @mold.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @mold.update(mold_params)
        format.html { redirect_to  @mold, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @mold }
      else
        format.html { render :edit }
        format.json { render json:  @mold.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @mold.destroy
    respond_to do |format|
      format.html { redirect_to @mold_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_mold
      @mold = Mold.find(params[:id])
    end

    def mold_params
      params.require(:mold).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
