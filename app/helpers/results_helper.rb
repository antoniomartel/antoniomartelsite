module ResultsHelper
  # Checks if the student passed the test
  def pass
    count = session[:points].to_i

    if count >= 8 then 
      "Enhorabuena, usted ha pasado el test con " + count.to_s + " puntos sobre 10"
    else 
      "Lo siento, usted ha fallado el test con " + (10 - count).to_s + " preguntas incorrectas"
    end
  end
end
