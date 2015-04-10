class PlumbingsController < ApplicationController
  before_action :set_plumbing, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
      @plumbings = Plumbing.search(params[:search])
    else
      @plumbings = Plumbing.all
    end
  end



  def index
    @plumbings = Plumbing.all
  end

  def show
  end

  def new
    @plumbing = Plumbing.new
  end

  def edit
  end

  def create
   @plumbing = Plumbing.new(plumbing_params)
    @plumbing.user_id = current_user.id
    respond_to do |format|
      if @plumbing.save
        format.html { redirect_to @plumbing, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @plumbing }
      else
        format.html { render :new }
        format.json { render json: @plumbing.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if   @plumbing.update(plumbing_params)
        format.html { redirect_to @plumbing, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @plumbing }
      else
        format.html { render :edit }
        format.json { render json: @plumbing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @plumbing.destroy
    respond_to do |format|
      format.html { redirect_to @plumbing_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_plumbing
      @plumbing = Plumbing.find(params[:id])
    end

    def plumbing_params
      params.require(:plumbing).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
end
