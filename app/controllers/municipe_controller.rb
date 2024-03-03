class MunicipeController < ApplicationController
  before_action :set_municipe, only: %i[show edit update]

  def index
    @municipe = Municipe.all
  end

  def show
    @municipe = Municipe.find(params[:id])
  end

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

  def edit
    @municipe = Municipe.find(params[:id])
  end

  def update
    if @municipe.update(params[:municipe])
      redirect_to @municipe, notice: 'Municipe was successfully updated.'
    else
      render :edit
    end
  end

  private

  def flash_success
    flash[:notice] = 'Municipe criado com sucesso.'
  end

  def municipe_params
    params.require(:municipe).permit(
      :name, :cpf, :email, :phone, :birthdate, :cns, :status,
      endereco_attributes: [:cep, :logradouro, :numero, :complemento, :bairro, :cidade, :estado]
    )
  end
end
