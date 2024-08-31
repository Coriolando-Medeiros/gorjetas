puts "Pizzaria Ruby"
puts ""

class Gorjetas
  def initialize
    @itens = []
    @pratos_escolhidos = []
    @total = 0
  end

  def pratos_bebidas
    @itens = [
      { nome: "Pizza Margherita", preco: 35.00 },
      { nome: "Pizza Calabresa", preco: 40.00 },
      { nome: "Pizza Quatro Queijos", preco: 45.00 },
      { nome: "Pizza Frango com Catupiry", preco: 42.00 },
      { nome: "Pizza Portuguesa", preco: 43.00 },
      { nome: "Pizza de Pepperoni", preco: 47.00 },
      { nome: "Pizza Vegetariana", preco: 38.00 },
      { nome: "Pizza Napolitana", preco: 36.00 },
      { nome: "Pizza de Atum", preco: 44.00 },
      { nome: "Pizza de Bacon com Cheddar", preco: 48.00 },
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

  def menu
    pratos_bebidas
    puts "Menu"
    puts "COBRAMOS TAXA DE SERVIÇOS DE 10%"
    puts ""
    @itens.each_with_index do |item, indice|
      puts "#{indice + 1}. #{item[:nome]} - R$ #{item[:preco]}"
    end
  end

  def escolher_prato
    loop do
      puts "Digite o número do prato/bebida | 0 para sair"
      numero_prato = gets.chomp.to_i
  
      break if numero_prato == 0
  
      if numero_prato > 0 && numero_prato <= @itens.length
        @pratos_escolhidos << @itens[numero_prato - 1]
        puts "Prato #{numero_prato} adicionado!"
      else
        puts "Número inválido, tente novamente"
      end
    end
    @pratos_escolhidos
  end
  

  def calcula_conta
    @total = @pratos_escolhidos.sum { |item| item[:preco] }
    puts "Valor consumido: R$ #{@total}"
  end
  

  def valores_detalhados
    puts "Conta detalhada"
    @pratos_escolhidos.each_with_index do |item, indice|
      puts "#{indice + 1}. #{item[:nome]} - R$ #{item[:preco]}"
    end
  end

  def calcula_gorjeta
    valor_conta = @total + (@total * 0.10)
    puts "Valor total com gorjeta: R$ #{valor_conta}"
  end
end

gorjetas = Gorjetas.new
gorjetas.menu
gorjetas.escolher_prato
gorjetas.valores_detalhados
gorjetas.calcula_conta
gorjetas.calcula_gorjeta
