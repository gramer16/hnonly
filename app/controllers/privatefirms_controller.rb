class PrivatefirmsController < ApplicationController
  before_action :set_privatefirm, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
     @privatefirms = Privatefirm.search(params[:search])
    else
     @privatefirms = Privatefirm.all
    end
  end
  


  def index
    @privatefirms = Privatefirm.all
  end

  def show
  end

  def new
    @privatefirm = Privatefirm.new
  end

  def edit
  end

  def create
    @privatefirm = Privatefirm.new(privatefirm_params)
     @privatefirm.user_id = current_user.id
    respond_to do |format|
      if @privatefirm.save
        format.html { redirect_to @privatefirm, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @privatefirm }
      else
        format.html { render :new }
        format.json { render json: @privatefirm.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    respond_to do |format|
      if   @privatefirm.update(privatefirm_params)
        format.html { redirect_to @privatefirm, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @privatefirm}
      else
        format.html { render :edit }
        format.json { render json: @privatefirm.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @privatefirm.destroy
    respond_to do |format|
      format.html { redirect_to privatefirm_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_privatefirm
      @privatefirm = Privatefirm.find(params[:id])
    end

    def privatefirm_params
      params.require(:privatefirm).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
