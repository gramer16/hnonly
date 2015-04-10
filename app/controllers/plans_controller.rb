class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  def index
    @plans = Plan.all
  end

  def show
  end

  def new
    @plan = Plan.new
  end

  def edit
  end

  def create
    @plan = Plan.new(plan_params)
    Stripe.api_key = ENV["STRIPE_API_KEY"]
    begin
    Stripe::Plan.create(
      :amount => (@plan.price * 100).floor,
      :interval => "month",
      :name => @plan.name,
      :currency => "usd",
      :id => @plan.name
      )
      flash[:notice] = "The Advertising Plan was Creating successfully!"
      rescue Stripe::APIError => e
      logger.error "Stripe Authentication error while creating user: #{e.message}"
      errors.add :base, "Our system is temporarily unable to process credit cards."
      false 
    end
      respond_to do |format|
      if @plan.save
        format.html { redirect_to @plan, notice: 'Plan was successfully created.' }
        format.json { render :show, status: :created, location: @plan }
      else
        format.html { render :new }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @plan.update(plan_params)
  end

  def destroy
    @plan.destroy
  end

  private
    def set_plan
      @plan = Plan.find(params[:id])
    end

    def plan_params
      params.require(:plan).permit(:name, :price, :interval)
    end
end
