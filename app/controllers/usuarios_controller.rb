class UsuariosController < ApplicationController

  def index
    # 1. Empezamos con todos los usuarios
    @usuarios = Usuario.all

    # 2. Si escribiste algo en el buscador de texto, filtramos por nombre/apellido
    if params[:query].present?
      termino = "%#{params[:query]}%"
      @usuarios = @usuarios.where("LOWER(nombre) LIKE LOWER(:t) OR LOWER(apellidos) LIKE LOWER(:t)", t: termino)
    end

    # 3. Si pusiste una fecha en "Después de" (fecha_inicio)
    if params[:fecha_inicio].present?
      @usuarios = @usuarios.where("fecha_nacimiento >= ?", params[:fecha_inicio])
    end

    # 4. Si pusiste una fecha en "Antes de" (fecha_fin)
    if params[:fecha_fin].present?
      @usuarios = @usuarios.where("fecha_nacimiento <= ?", params[:fecha_fin])
    end

    # 5. Finalmente, aplicamos la paginación de Kaminari a los resultados que hayan quedado
    @usuarios = @usuarios.page(params[:page]).per(7)
  end

  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      redirect_to usuarios_path
    else
      render :new
    end
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def update
    @usuario = Usuario.find(params[:id])

    if @usuario.update(usuario_params)
      redirect_to usuarios_path
    else
      render :edit
    end
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy
    redirect_to usuarios_path
  end

  private

  def usuario_params
    params.require(:usuario).permit(:nombre, :apellidos, :telefono, :correo, :fecha_nacimiento)
  end

end