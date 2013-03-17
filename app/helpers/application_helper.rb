#encoding: utf-8
module ApplicationHelper
  require 'date'
  def main_menu
    pages = {
      "Visualizar administradores" => administrador_admins_path,
      "Visualizar Familias" => administrador_families_path,
      "Visualizar Membros" => administrador_members_path,
      "Visualizar Mensagens" => administrador_contato_index_path,
      "Mensagens Home" => administrador_homemessage_path,
      "Depósitos" => administrador_fee_path
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
      "Sobre o Casal" => sobre_os_noivos_path,
      "Contato" => contato_path
    }
    pages.map do |key, value|
      #classnames = %( class="active") if "/#{params[:controller]}" == value
      "<li>#{link_to(key, value)}</li>"
    end
  end
  
  def tempo_para_casamento(data)
    datacasamento = Date.parse(data)
    datacasamento_meses = datacasamento.month
    datacasamento_dias = datacasamento.day
    now = Date.today
    mes_atual = now.month
    dia_atual = now.day
    if ((datacasamento_meses - mes_atual) > 1 )
      diferenca = datacasamento_meses - mes_atual
      "Restam #{diferenca} meses"  
    else
      diferenca = datacasamento.mjd - now.mjd
      if diferenca > 0
        "Restam #{diferenca} dias"
      else
        "Enfim Casados ! Yey !"
      end
    end
  end
  
end























