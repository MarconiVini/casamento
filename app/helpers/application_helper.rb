#encoding: utf-8
module ApplicationHelper
  
  def main_menu
    pages = {
      "Visualizar administradores" => administrador_admins_path,
      "Visualizar Familias" => administrador_families_path,
      "Visualizar Membros" => administrador_members_path
    }
    pages.map do |key, value|
      classnames = %( class="active") if "/#{params[:controller]}" == value
      "<li#{classnames}>#{link_to(key, value)}</li>"
    end
  end
  
  def site_main_menu
    pages = {
      "Home" => root_path,
      "Confirme sua Presença" => presence_path,
      "Cotas de Lua de Mel" => cotas_path,
      "Local" => locations_path,
      "Sobre o Casal" => root_path,
      "Contato" => root_path
    }
    pages.map do |key, value|
      #classnames = %( class="active") if "/#{params[:controller]}" == value
      "<li>#{link_to(key, value)}</li>"
    end
  end
  
end
