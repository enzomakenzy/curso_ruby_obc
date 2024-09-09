# Módulo Conversão de Comprimento
# 
# Milhas para Pés
# Milhas para Polegadas
# Milhas para Centímetros

# Quando usamos o self significa que podemos chamar direto sem precisar instânciar, mostramos que aquele método pertence a aquele módulo.

module LengthConversions
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimers(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

