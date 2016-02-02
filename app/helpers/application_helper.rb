module ApplicationHelper

# Retourner un titre basé sur la page.
  def titre
    base_title = "CinephileApp"
    if @titre.nil?
      base_title
    else
      "#{base_title} | #{@titre}"
    end
  end
end
