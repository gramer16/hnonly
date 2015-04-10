class ArquitectsController < ApplicationController
  before_action :set_arquitect, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:destroy, :edit]
 
  def search
    if params[:search].present?
      @arquitects = Arquitect.search(params[:search])
    else
      @arquitects = Arquitect.all
    end
  end

  def autocomplete
    render json: Arquitect.search(params[:query], fields:[{name: :text_start}], limit: 10).map(&:name)
  end


  def index
    @arquitects = Arquitect.all
    
  end

  def show
  end

  def new
    @arquitect = Arquitect.new
  end

  def edit
  end

 
 def create
     @arquitect = Arquitect.new(arquitect_params)
    respond_to do |format|
      if @arquitect.save
        format.html { redirect_to  @arquitect, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location:  @arquitect }
      else
        format.html { render :new }
        format.json { render json:  @arquitect.errors, status: :unprocessable_entity }
      end
    end
  end

def update
    respond_to do |format|
      if @arquitect.update(arquitect_params)
        format.html { redirect_to @arquitect, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @arquitect }
      else
        format.html { render :edit }
        format.json { render json: @arquitect.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @arquitect.destroy
    respond_to do |format|
      format.html { redirect_to arquitect_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    def set_arquitect
      @arquitect = Arquitect.find(params[:id])
    end

    def arquitect_params
      params.require(:arquitect).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
    def check_user
        unless current_user.admin?
         redirect_to root_url, alert: "Sorry, Only Ontario's Only Admin can Delete a Subscription"
    end
  end

end
