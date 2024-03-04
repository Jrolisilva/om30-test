class MunicipeController < ApplicationController
  before_action :set_municipe, only: %i[show edit update]

  def index
    @municipe = Municipe.all

    @municipe = Municipe.where(cpf: params[:cpf]) if params[:cpf]
  end

  def show; end

  def new
    @municipe = Municipe.new
    @municipe.build_endereco
  end

  def create
    municipe = Municipe.new(municipe_params)

    if municipe.save
      render json: municipe, status: :created
    else
      render json: municipe.errors, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if municipe.update(params[:municipe])
      render json: municipe, status: :ok
    else
      render json: municipe.errors, status: :unprocessable_entity
    end
  end

  private

  def set_municipe
    @municipe = Municipe.find(params[:id])
  end

  def municipe_params
    params.require(:municipe).permit(
      :name, :cpf, :email, :phone, :photo, :birthdate, :cns, :status,
      endereco_attributes: [:zipcode, :street, :number, :complement, :district, :city, :state, :ibge_code]
    )
  end
end
