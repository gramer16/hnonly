class WindowsController < ApplicationController
  before_action :set_window, only: [:show, :edit, :update, :destroy]
  
  def search
    if params[:search].present?
       @windows = Window.search(params[:search])
    else
       @windows = Window.all
    end
  end



  def index
    @windows = Window.all
  end

  def show
  end

  def new
    @window = Window.new
  end

  def edit
  end

  def create

    @window = Window.new(window_params)
     @window.user_id = current_user.id
    respond_to do |format|
      if @window.save
        format.html { redirect_to @window, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @window }
      else
        format.html { render :new }
        format.json { render json: @window.errors, status: :unprocessable_entity }
      end
    end

  end

  def update
    respond_to do |format|
      if @window.update(window_params)
        format.html { redirect_to @window, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @window }
      else
        format.html { render :edit }
        format.json { render json: @window.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

    @window.destroy
    respond_to do |format|
      format.html { redirect_to window_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_window
      @window = Window.find(params[:id])
    end

    def window_params
      params.require(:window).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
end
