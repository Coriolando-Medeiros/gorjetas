puts "Pizzaria Ruby"
puts ""

class Gorjetas
  def initialize
    @itens_pizza = []
    @itens_bebida = []
    @pizzas_escolhidas = []
    @bebidas_escolhidas = []
    @total = 0
    pizzas_bebidas
  end

  def pizzas_bebidas
    @itens_pizza = [
      { nome: "Pizza Margherita", preco: 35.00 },
      { nome: "Pizza Calabresa", preco: 40.00 },
      { nome: "Pizza Quatro Queijos", preco: 45.00 },
      { nome: "Pizza Frango com Catupiry", preco: 42.00 },
      { nome: "Pizza Portuguesa", preco: 43.00 },
      { nome: "Pizza de Pepperoni", preco: 47.00 },
      { nome: "Pizza Vegetariana", preco: 38.00 },
      { nome: "Pizza Napolitana", preco: 36.00 },
      { nome: "Pizza de Atum", preco: 44.00 },
      { nome: "Pizza de Bacon com Cheddar", preco: 48.00 }
    ]
    @itens_bebida = [
      { nome: "Refrigerante (Lata)", preco: 5.00 },
      { nome: "Refrigerante (1L)", preco: 8.00 },
      { nome: "Suco Natural (Copo)", preco: 7.00 },
      { nome: "Água Mineral (500ml)", preco: 3.00 },
      { nome: "Cerveja (Long Neck)", preco: 10.00 },
      { nome: "Vinho Tinto (Taça)", preco: 15.00 },
      { nome: "Cerveja Artesanal (Garrafa 600ml)", preco: 18.00 },
      { nome: "Caipirinha", preco: 12.00 },
      { nome: "Chá Gelado (Copo)", preco: 6.00 },
      { nome: "Energético (Lata)", preco: 12.00 }
    ]
  end

  def menu_pizzas
    puts "Menu de Pizzas"
    puts "COBRAMOS TAXA DE SERVIÇOS DE 10%"
    puts ""
    @itens_pizza.each_with_index do |item, indice|
      puts "#{indice + 1}. #{item[:nome]} - R$ #{item[:preco]}"
    end
  end

  def menu_bebidas
    puts "Menu de Bebidas"
    @itens_bebida.each_with_index do |item, indice|
      puts "#{indice + 1}. #{item[:nome]} - R$ #{item[:preco]}"
    end
  end

  def escolher_pizza
    loop do
      puts "Escolha o número do sabor da pizza | 0 para sair"
      numero_prato = gets.chomp.to_i
  
      break if numero_prato == 0
  
      if numero_prato > 0 && numero_prato <= @itens_pizza.length
        @pizzas_escolhidas << @itens_pizza[numero_prato - 1]
        puts "Pizza #{numero_prato} adicionada!"
      else
        puts "Número inválido, tente novamente"
      end
    end
    @pizzas_escolhidas
  end
  
  def escolher_bebida
    loop do
      puts "Escolha o número da bebida | 0 para sair"
      numero_bebida = gets.chomp.to_i

      break if numero_bebida == 0

      if numero_bebida > 0 && numero_bebida <= @itens_bebida.length
        @bebidas_escolhidas << @itens_bebida[numero_bebida - 1]
        puts "Bebida #{numero_bebida} adicionada!"
      else
        puts "Número inválido, tente novamente!"
      end
    end
    @bebidas_escolhidas
  end

  def calcula_conta
    @total = @pizzas_escolhidas.sum { |item| item[:preco] }
    @total += @bebidas_escolhidas.sum { |item| item[:preco] }
    puts "Valor consumido: R$ #{@total}"
  end

  def valores_detalhados
    puts "Conta detalhada"
    @pizzas_escolhidas.each_with_index do |item, indice|
      puts "#{indice + 1}. #{item[:nome]} - R$ #{item[:preco]}"
    end
    @bebidas_escolhidas.each_with_index do |item, indice|
      puts "#{indice + 1 + @pizzas_escolhidas.length}. #{item[:nome]} - R$ #{item[:preco]}"
    end
  end

  def calcula_gorjeta
    valor_conta = @total + (@total * 0.10)
    puts "Valor total com gorjeta: R$ #{valor_conta}"
  end
end

gorjetas = Gorjetas.new

# Mostrar menu de pizzas e permitir escolha
gorjetas.menu_pizzas
gorjetas.escolher_pizza

# Mostrar menu de bebidas e permitir escolha
gorjetas.menu_bebidas
gorjetas.escolher_bebida

# Mostrar os detalhes da conta
gorjetas.valores_detalhados
gorjetas.calcula_conta
gorjetas.calcula_gorjeta
