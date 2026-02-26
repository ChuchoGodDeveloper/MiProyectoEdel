class Usuario < ApplicationRecord
  # Validaciones para asegurar que no entren números, símbolos, 
  # ni textos mayores a 50 caracteres en la base de datos.
  validates :nombre, :apellidos, 
            presence: true, 
            length: { maximum: 50 }, 
            format: { 
              with: /\A[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+\z/, 
              message: "solo debe contener letras y espacios" 
            }
end