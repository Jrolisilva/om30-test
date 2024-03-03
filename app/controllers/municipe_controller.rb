class MunicipeController < ApplicationController
  before_action :set_municipe, only: %i[show edit update]

  def index
    @municipe = Municipe.all
  end

  def show; end

  def new
    @municipe = Municipe.new
    @municipe.build_endereco
  end

  def create
    @municipe = Municipe.new(municipe_params)
    if @municipe.save
      flash_success
      redirect_to home_path
    else
      render :new
    end
  end

  def edit; end

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

  def flash_success
    flash[:notice] = 'Municipe criado com sucesso.'
  end
end
