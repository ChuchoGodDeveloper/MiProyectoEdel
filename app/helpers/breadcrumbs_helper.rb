module BreadcrumbsHelper
  def breadcrumb_trail
    trail = []
    
    # 1. Elemento raíz único y limpio. Adiós a la redundancia "Menú / Inicio".
    trail << { name: "Inicio", path: root_path }

    # 2. Evaluamos en qué controlador estamos
    case controller_name
    when "usuarios"
      # Siempre agregamos el nivel de "Usuarios"
      trail << { name: "Usuarios", path: usuarios_path }
      
      # 3. Evaluamos la acción para saber si necesitamos un paso extra
      # Nota: Si es "index" (Lista), no hacemos nada, ya terminamos en "Usuarios".
      case action_name
      when "new"
        trail << { name: "Nuevo Usuario", path: new_usuario_path }
      when "edit"
        trail << { name: "Editar Usuario", path: edit_usuario_path(@usuario) } if @usuario
      when "show"
        # Si tienes el método nombre_completo en tu modelo
        trail << { name: @usuario.nombre_completo, path: usuario_path(@usuario) } if @usuario
      end
    end
    
    # Agrega más controladores (when "productos", etc.) según los vayas necesitando
    trail
  end
end