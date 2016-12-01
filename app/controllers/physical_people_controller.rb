class PhysicalPeopleController < ApplicationController

  before_action :authorize_manager
  before_action :set_physical_person, only: [:show, :edit, :update, :destroy]

  def index
    @physical_people = PhysicalPerson.all
  end

  def show
  end

  def new
    @physical_person = PhysicalPerson.new
  end

  def edit
  end

  def create
    @physical_person = PhysicalPerson.new(physical_person_params)

    respond_to do |format|
      if @physical_person.save
        format.html { redirect_to @physical_person, notice: 'Pessoa física cadastrada.' }
        format.json { render :show, status: :created, location: @physical_person }
      else
        format.html { render :new }
        format.json { render json: @physical_person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @physical_person.update(physical_person_params)
        format.html { redirect_to @physical_person, notice: 'Pessoa física editada.' }
        format.json { render :show, status: :ok, location: @physical_person }
      else
        format.html { render :edit }
        format.json { render json: @physical_person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @physical_person.destroy
    respond_to do |format|
      format.html { redirect_to physical_people_url, notice: 'Pessoa física excluída.' }
      format.json { head :no_content }
    end
  end

  private
    def set_physical_person
      @physical_person = PhysicalPerson.find(params[:id])
    end

    def physical_person_params
      params.require(:physical_person).permit(:cpf, :nome, :nascimento)
    end
end
