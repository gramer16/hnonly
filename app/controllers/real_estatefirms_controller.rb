class RealEstatefirmsController < ApplicationController
  before_action :set_real_estatefirm, only: [:show, :edit, :update, :destroy]
    def search
    if params[:search].present?
     @real_estatefirms = RealEstatefirm.search(params[:search])
    else
     @real_estatefirms = RealEstatefirm.all
    end
  end


  def index
    @real_estatefirms = RealEstatefirm.all
  end

  def show
  end

  def new
    @real_estatefirm = RealEstatefirm.new
  end

  def edit
  end

  def create
     @real_estatefirm = RealEstatefirm.new(real_estatefirm_params)
     @real_estatefirm.user_id = current_user.id
    respond_to do |format|
      if @real_estatefirm.save
        format.html { redirect_to @real_estatefirm, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @real_estatefirm }
      else
        format.html { render :new }
        format.json { render json: @real_estatefirm.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if   @real_estatefirm.update(real_estatefirm_params)
        format.html { redirect_to @real_estatefirm, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @real_estatefirm }
      else
        format.html { render :edit }
        format.json { render json: @real_estatefirm.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @real_estatefirm.destroy
    respond_to do |format|
      format.html { redirect_to real_estatefirm_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_real_estatefirm
      @real_estatefirm = RealEstatefirm.find(params[:id])
    end

    def real_estatefirm_params
      params.require(:real_estatefirm).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
