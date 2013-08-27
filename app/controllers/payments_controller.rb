class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
    @sale = @payment.sale
  end

  # POST /payments
  # POST /payments.json
  def create
    @sale = Sale.find(params[:sale_id])
    @payment = @sale.payments.build(payment_params)
    # @payment = Payment.new(payment_params)
    # render params.inspect
    # render @payment.inspect
    # render @sale.inspect
    
    respond_to do |format|
      if @payment.save
        format.html { redirect_to @sale, notice: 'Payment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sale }
      else
        format.html { redirect_to @sale, notice: 'Payment could not be saved. Please fill in all fields'  }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    @sale = @payment.sale
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @sale, notice: 'Payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to @sale, notice: 'Payment could not be saved. Please fill in all fields' }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:sale_id, :payment_type_id, :payment_date, :payment_status_id, :amount, :note, :currency)
    end
end
