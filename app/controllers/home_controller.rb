class HomeController < ApplicationController
  def index
    @gallery_images = GalleryImage.order(created_at: :desc)
  end

  # Nuevo método para probar el captcha
  def probar_captcha
    if verify_recaptcha
      flash[:notice] = "¡Éxito! El sistema de Google validó que eres humano."
    else
      flash[:alert] = "Error: Por favor completa el reCAPTCHA correctamente."
    end
    
    redirect_to root_path
  end
end