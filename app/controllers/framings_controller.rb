class FramingsController < ApplicationController
  before_action :set_framing, only: [:show, :edit, :update, :destroy]

  def search
    if params[:search].present?
      @framings = Framing.search(params[:search])
    else
      @framings = Framing.all
    end
  end
  

  def index
    @framings = Framing.all
  end

  def show
  end

  def new
    @framing = Framing.new
  end

  def edit
  end

  def create
      @framing = Framing.new(framing_params)
      @framing.user_id = current_user.id
    respond_to do |format|
      if @framing.save
        format.html { redirect_to @framing, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @framing }
      else
        format.html { render :new }
        format.json { render json: @framing.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @framing.update(framing_params)
        format.html { redirect_to @framing, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @framing }
      else
        format.html { render :edit }
        format.json { render json:  @framing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @framing.destroy
      respond_to do |format|
      format.html { redirect_to @framing_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_framing
      @framing = Framing.find(params[:id])
    end

    def framing_params
      params.require(:framing).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
    
end
