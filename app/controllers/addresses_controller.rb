class AddressesController < ApplicationController

  before_action :authorize_manager
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @address.update(address_params)
        format.html { redirect_to @address, notice: 'Address was successfully updated.' }
        format.json { render :show, status: :ok, location: @address }
      else
        format.html { render :edit }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_address
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:rua, :cidade, :uf, :cep, :numero)
    end
end
