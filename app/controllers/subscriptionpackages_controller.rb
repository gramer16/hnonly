class SubscriptionpackagesController < ApplicationController
  before_action :set_subscriptionpackage, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:seller]
  def seller
    @subscriptionpackages = Subscriptionpackage.where(user: current_user)
  end

  def index
    @subscriptionpackages = Subscriptionpackage.all
  end

  def show
  end

  def new
    @subscriptionpackage = Subscriptionpackage.new
  end

  def edit
  end

  def create
    @subscriptionpackage = Subscriptionpackage.new(subscriptionpackage_params)
    @subscriptionpackage.user_id = current_user.id
    
    respond_to do |format|
      if @subscriptionpackage.save
        format.html { redirect_to @subscriptionpackage, notice: 'Suscription was successfully created.' }
        format.json { render :show, status: :created, location: @subscriptionpackage }
      else
        format.html { render :new }
        format.json { render json: @subscriptionpackage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @subscriptionpackage.update(subscriptionpackage_params)
        format.html { redirect_to @subscriptionpackage, notice: 'Subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscriptionpackage }
      else
        format.html { render :edit }
        format.json { render json: @subscriptionpackage.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @subscriptionpackage.destroy
    respond_to do |format|
      format.html { redirect_to @subscriptionpackage_url, notice: 'Subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_subscriptionpackage
      @subscriptionpackage = Subscriptionpackage.find(params[:id])
    end

    def subscriptionpackage_params
      params.require(:subscriptionpackage).permit(:package_title, :package_name, :package_description, :price1, :features_include, :image)
    end
    def check_user
      if current_user != @subscriptionpackage.user
        redirect_to root_url, alert: "Sorry, this listing belongs to someone else"
      end
  end
end
