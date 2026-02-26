class GalleryImagesController < ApplicationController
  def create
    @gallery_image = GalleryImage.new(gallery_image_params)
    if @gallery_image.save
      redirect_to root_path, notice: 'Imagen subida correctamente.'
    else
      redirect_to root_path, alert: 'Error al subir la imagen.'
    end
  end

  # Agregamos el método para eliminar
  def destroy
    @gallery_image = GalleryImage.find(params[:id])
    @gallery_image.destroy
    redirect_to root_path, notice: 'Imagen eliminada del carrusel.'
  end

  private

  def gallery_image_params
    params.require(:gallery_image).permit(:image, :title) 
  end
end