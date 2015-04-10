class TermiteinspectorsController < ApplicationController
  before_action :set_termiteinspector, only: [:show, :edit, :update, :destroy]
  def search
    if params[:search].present?
       @termiteinspectors = Termiteinspector.search(params[:search])
    else
       @termiteinspectors = Termiteinspector.all
    end
  end



  def index
    @termiteinspectors = Termiteinspector.all
  end

  def show
  end

  def new
    @termiteinspector = Termiteinspector.new
  end

  def edit
  end

  def create
    @termiteinspector = Termiteinspector.new(titlecompany_params)
     @termiteinspector.user_id = current_user.id
    respond_to do |format|
      if @termiteinspector.save
        format.html { redirect_to @termiteinspector, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @termiteinspector }
      else
        format.html { render :new }
        format.json { render json: @termiteinspector.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @termiteinspector.update(termiteinspector_params)
        format.html { redirect_to @termiteinspector, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @termiteinspector }
      else
        format.html { render :edit }
        format.json { render json: @termiteinspector.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @termiteinspector.destroy
    respond_to do |format|
      format.html { redirect_to termiteinspector_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_termiteinspector
      @termiteinspector = Termiteinspector.find(params[:id])
    end

    def termiteinspector_params
      params.require(:termiteinspector).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
