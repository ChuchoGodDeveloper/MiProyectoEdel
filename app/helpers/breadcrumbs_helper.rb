module BreadcrumbsHelper
  def breadcrumb_trail
    trail = []
    # Elemento raíz: "Menú" (puedes cambiarlo a "Inicio" si prefieres)
    trail << { name: "Menú", path: root_path }

    case controller_name
    when "home"
      trail << { name: "Inicio", path: root_path }
    when "usuarios"
      trail << { name: "Usuarios", path: usuarios_path }
      case action_name
      when "index"
        trail << { name: "Lista", path: usuarios_path }
      when "new"
        trail << { name: "Nuevo Usuario", path: new_usuario_path }
      when "edit"
        trail << { name: "Editar Usuario", path: edit_usuario_path(@usuario) }
      when "show"
        # Si tienes vista show, usa el nombre del usuario
        trail << { name: @usuario.nombre_completo, path: usuario_path(@usuario) } if @usuario
      end
    end
    # Agrega más controladores según los vayas necesitando
    trail
  end
end