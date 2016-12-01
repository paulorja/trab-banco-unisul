class PartnersController < ApplicationController

  before_action :authorize_manager
  before_action :set_partner, only: [:show, :edit, :update, :destroy]

  def index
    @partners = Partner.all
  end

  def show
  end

  def new
    @partner = Partner.new
  end

  def edit
  end

  def create
    @partner = Partner.new

    @partner.person_id = partner_params[:person_id]
    @partner.account_id = partner_params[:account_number]

    respond_to do |format|
      if @partner.save
        format.html { redirect_to @partner, notice: 'Sócio criado.' }
        format.json { render :show, status: :created, location: @partner }
      else
        format.html { render :new }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @partner.update_attributes({person_id: partner_params[:person_id], account_id: partner_params[:account_number]})
        format.html { redirect_to @partner, notice: 'Sócio editado.' }
        format.json { render :show, status: :ok, location: @partner }
      else
        format.html { render :edit }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @partner.destroy
    respond_to do |format|
      format.html { redirect_to partners_url, notice: 'Sócio excluído.' }
      format.json { head :no_content }
    end
  end

  private
    def set_partner
      @partner = Partner.find(params[:id])
    end

    def partner_params
      params.require(:partner).permit(:person_id, :account_number)
    end
end
