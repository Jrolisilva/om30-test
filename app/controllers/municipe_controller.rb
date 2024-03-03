class MunicipeController < ApplicationController
  before_action :set_municipe, only: %i[show edit update]

  def index
    @municipe = Municipe.new
    @municipe.build_endereco  # Cria uma instância de Endereco associada ao Municipe
  end

  def create
    @municipe = Municipe.new(municipe_params)
    if @municipe.save
      redirect_to @municipe, notice: 'Municipe was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @municipe.update(municipe_params)
      redirect_to @municipe, notice: 'Municipe was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_municipe
    @municipe = Municipe.find(params[:id])
  end

  def municipe_params
    params.require(:municipe).permit(:name, :cpf, :cns, :email, :birthdate, :phone, :photo, :status,
                                    endereco_attributes: %i[cep logradouro complemento bairro cidade uf codigo_ibge])
  end
end
