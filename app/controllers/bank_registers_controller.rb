class BankRegistersController < ApplicationController
  before_action :set_bank_register, only: [:show, :edit, :update, :destroy]

  # GET /bank_registers
  # GET /bank_registers.json
  def index
    @bank_registers = BankRegister.all
    @total = BankRegister.balance.to_f
     if @total <= 0
       @chastise = "WARNING: Your balance is negative!"
     end
    #  total_balance = @transaction_name.reduce(0) {|sum, i| sum + i.transaction_amount}
  end

  # GET /bank_registers/1
  # GET /bank_registers/1.json
  def show
  end

  # GET /bank_registers/new
  def new
    @bank_register = BankRegister.new
  end

  # GET /bank_registers/1/edit
  def edit
  end

  # POST /bank_registers
  # POST /bank_registers.json
  def create
    @bank_register = BankRegister.new(bank_register_params)

    respond_to do |format|
      if @bank_register.save
        format.html { redirect_to @bank_register, notice: 'Bank register was successfully created.' }
        format.json { render :show, status: :created, location: @bank_register }
      else
        format.html { render :new }
        format.json { render json: @bank_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_registers/1
  # PATCH/PUT /bank_registers/1.json
  def update
    respond_to do |format|
      if @bank_register.update(bank_register_params)
        format.html { redirect_to @bank_register, notice: 'Bank register was successfully updated.' }
        format.json { render :show, status: :ok, location: @bank_register }
      else
        format.html { render :edit }
        format.json { render json: @bank_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_registers/1
  # DELETE /bank_registers/1.json
  def destroy
    @bank_register.destroy
    respond_to do |format|
      format.html { redirect_to bank_registers_url, notice: 'Bank register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_register
      @bank_register = BankRegister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bank_register_params
      params.require(:bank_register).permit(:transaction_name, :transaction_amount, :total)
    end
end
