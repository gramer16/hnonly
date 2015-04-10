class MovingcompaniesController < ApplicationController
  before_action :set_movingcompany, only: [:show, :edit, :update, :destroy]
  
  def search
    if params[:search].present?
      @movingcompanies = Movingcompany.search(params[:search])
    else
      @movingcompanies = Movingcompany.all
    end
  end


  def index
    @movingcompanies = Movingcompany.all
  end

  def show
  end

  def new
    @movingcompany = Movingcompany.new
  end

  def edit
  end

  def create
     @movingcompany = Movingcompany.new(movingcompany_params)
    @movingcompany.user_id = current_user.id
    respond_to do |format|
      if @movingcompany.save
        format.html { redirect_to @movingcompany, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @movingcompany }
      else
        format.html { render :new }
        format.json { render json: @movingcompany.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @movingcompany.update(movingcompany_params)
        format.html { redirect_to  @movingcompany, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @movingcompany }
      else
        format.html { render :edit }
        format.json { render json:  @movingcompany.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @movingcompany.destroy
    respond_to do |format|
      format.html { redirect_to @movingcompany_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }

  end
end

  private
    def set_movingcompany
      @movingcompany = Movingcompany.find(params[:id])
    end

    def movingcompany_params
      params.require(:movingcompany).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
