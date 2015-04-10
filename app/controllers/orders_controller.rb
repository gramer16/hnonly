class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:sales, :purchases]

  def sales
    @orders = Order.all.where(seller: current_user).order("created_at DESC")
  end

  def purchases
    @orders = Order.all.where(buyer: current_user).order("created_at DESC")
  end

  def index
    @orders = Order.all
    
  end

  def show
   
  end

  def new
    @order = Order.new
    @subscriptionpackage = Subscriptionpackage.find(params[:subscriptionpackage_id])
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @subscriptionpackage = Subscriptionpackage.find(params[:subscriptionpackage_id])
    @seller = @subscriptionpackage.user

    @order.subscriptionpackage_id = @subscriptionpackage.id
    @order.buyer_id = current_user.id
    @order.seller_id = @seller.id
    Stripe.api_key = ENV["STRIPE_API_KEY"]
    token = params[:stripeToken]

    begin
      charge = Stripe::Charge.create(
        :amount => (@subscriptionpackage.price1 * 100).floor,
        :currency => "usd",
        :card => token
        )
       flash[:notice] = "Thanks for Advertise with Us, You will recieve a confirmation email shortly"
      rescue Stripe::CardError => e
      flash[:danger] = e.message
    end

    respond_to do |format|
      if @order.save
        format.html { redirect_to root_url }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @order.update(order_params)
        format.html { redirect_to  @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location:  @order }
      else
        format.html { render :edit }
        format.json { render json:  @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

    @order.destroy
    respond_to do |format|
      format.html { redirect_to @order_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:first_name, :last_name, :company_name, :street_address, :city, :state, :zipcode, :phone_number, :email, :company_service)
    end
    def check_user
      if current_user != @subscriptionpackage.user
        redirect_to root_url, alert: "Sorry, this listing belongs to someone else"
      end
  end
end
