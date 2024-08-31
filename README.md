# Sistema de Cálculo de Gorjetas

Este é um sistema simples de cálculo de gorjetas para uma pizzaria fictícia. O programa permite ao usuário selecionar pratos e bebidas de um menu, calcular o total consumido e, em seguida, calcular o valor final da conta incluindo uma gorjeta de 10%.

## Funcionalidades

- Exibe um menu de pratos e bebidas com preços.
- Permite ao usuário selecionar pratos e bebidas.
- Calcula o total consumido.
- Calcula o valor final da conta com uma gorjeta de 10%.

## Como Usar

1. Execute o programa.
2. Selecione os pratos e bebidas digitando o número correspondente no menu.
3. Digite `0` para finalizar a seleção.
4. O programa exibirá o valor total consumido e o valor final com a gorjeta.

## Exemplo de Uso

```
ruby
Sistema de cálculo de gorjetas
```

### Menu
1. Pizza Margherita - R$ 35.0
2. Pizza Calabresa - R$ 40.0
3. Pizza Quatro Queijos - R$ 45.0
...

Digite o número do prato/bebida | 0 para sair
1
Prato 1 adicionado!
Digite o número do prato/bebida | 0 para sair
3
Prato 3 adicionado!
Digite o número do prato/bebida | 0 para sair
0
Valor consumido: R$ 80.0
Valor total com gorjeta: R$ 88.0

## Estrutura do Código

    Gorjetas: A classe principal que contém os métodos para exibir o menu, selecionar os pratos, calcular o total da conta e a gorjeta.
   - `pratos_bebidas`: Define o menu de pratos e bebidas.
   - `menu`: Exibe o menu com os itens e preços.
   - `escolher_prato`: Permite que o usuário selecione os pratos e bebidas.
   - `calcula_conta`: Calcula o total dos itens escolhidos.
   - `calcula_gorjeta`: Calcula o valor final incluindo a gorjeta de 10%.

## Licença

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo LICENSE para obter mais informações.
