class AccountOperationsController < ApplicationController
  before_action :set_account_operation, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @account_operation = AccountOperation.new
  end

  def create
    @account_operation = AccountOperation.new

    @account_operation.tipo = account_operation_params[:tipo].to_i
    @account_operation.amount = account_operation_params[:amount]
    @account_operation.person_id = account_operation_params[:person_id]
    @account_operation.account_id = account_operation_params[:account_id]

    respond_to do |format|
      if @account_operation.save
        format.html { redirect_to account_path(@account_operation.account_id), notice: 'Account operation was successfully created.' }
        format.json { render :show, status: :created, location: @account_operation }
      else
        format.html { render :new }
        format.json { render json: @account_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_account_operation
      @account_operation = AccountOperation.find(params[:id])
    end

    def account_operation_params
      params.require(:account_operation).permit(:account_id, :person_id, :amount, :tipo)
    end
end
