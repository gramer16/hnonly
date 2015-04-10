class RealtorsController < ApplicationController
  before_action :set_realtor, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:destroy, :edit]
  def search
    if params[:search].present?
     @realtors = Realtor.search(params[:search])
    else
     @realtors = Realtor.all
    end
  end

  def index
    @realtors = Realtor.all
  end

  def show
  end

  def new
    @realtor = Realtor.new
  end

  def edit
  end

  def create
     @realtor = Realtor.new(realtor_params)
    respond_to do |format|
      if @realtor.save
        format.html { redirect_to @realtor, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @realtor }
      else
        format.html { render :new }
        format.json { render json: @realtor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @realtor.update(realtor_params)
        format.html { redirect_to @realtor, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @realtor }
      else
        format.html { render :edit }
        format.json { render json: @realtor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @realtor.destroy
    respond_to do |format|
      format.html { redirect_to realtor_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_realtor
      @realtor = Realtor.find(params[:id])
    end

    def realtor_params
      params.require(:realtor).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
    def check_user
        unless current_user.admin?
         redirect_to root_url, alert: "Sorry, Only Ontario's Only Admin can Delete a Subscription"
    end
  end
end
