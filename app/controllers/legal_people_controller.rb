class LegalPeopleController < ApplicationController

  before_action :authorize_manager
  before_action :set_legal_person, only: [:show, :edit, :update, :destroy]

  def index
    @legal_people = LegalPerson.all
  end

  def show
  end

  def new
    @legal_person = LegalPerson.new
  end

  def edit
  end

  def create
    @legal_person = LegalPerson.new(legal_person_params)

    respond_to do |format|
      if @legal_person.save
        format.html { redirect_to @legal_person, notice: 'Pessoa jurídica cadastrada.' }
        format.json { render :show, status: :created, location: @legal_person }
      else
        format.html { render :new }
        format.json { render json: @legal_person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @legal_person.update(legal_person_params)
        format.html { redirect_to @legal_person, notice: 'Pessoa jurídica editada.' }
        format.json { render :show, status: :ok, location: @legal_person }
      else
        format.html { render :edit }
        format.json { render json: @legal_person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @legal_person.destroy
    respond_to do |format|
      format.html { redirect_to legal_people_url, notice: 'Pessoa jurídica excluída.' }
      format.json { head :no_content }
    end
  end

  private
    def set_legal_person
      @legal_person = LegalPerson.find(params[:id])
    end

    def legal_person_params
      params.require(:legal_person).permit(:cnpj, :nome)
    end
end
