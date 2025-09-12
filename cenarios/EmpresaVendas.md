# Construindo o Banco "EmpresaVendas"

## Parte 1: Criação da Estrutura (DDL) 
### 1. Crie o Banco de Dados:
   
● Crie um novo banco de dados chamado EmpresaVendas.

● Em seguida, selecione esse banco para que todos os próximos comandos sejam 
executados nele.  

### 2. Crie as Tabelas: Escreva os comandos para criar as quatro tabelas abaixo, seguindo 
as especificações:

● Tabela Clientes: 

○ cliente_id: Deve ser um número inteiro, chave primária e que se 
auto-incrementa. 

○ nome: Texto de até 100 caracteres, não pode ser nulo. 

○ email: Texto de até 100 caracteres, não pode ser nulo e deve ser único. 

○ cidade: Texto de até 50 caracteres. 

● Tabela Produtos: 

○ produto_id: Deve ser um número inteiro, chave primária e que se 
auto-incrementa. 

○ nome_produto: Texto de até 100 caracteres, não pode ser nulo. 
○ preco: Número decimal com precisão de 10 dígitos, sendo 2 para as casas 
decimais. Não pode ser nulo. 

● Tabela Pedidos: 

○ pedido_id: Número inteiro, chave primária e auto-incrementado. 

○ cliente_id: Número inteiro que fará referência ao cliente_id da tabela 
Clientes. 

○ data_pedido: Deve armazenar uma data. 

● Tabela Pedido_Itens: 

○ pedido_item_id: Número inteiro, chave primária e auto-incrementado. 

○ pedido_id: Número inteiro que fará referência ao pedido_id da tabela 
Pedidos. 

○ produto_id: Número inteiro que fará referência ao produto_id da tabela 
Produtos. 

○ quantidade: Número inteiro. 

## Parte 2: Inserção de Dados (DML) 

## 1 - Popule as Tabelas Base: Escreva os comandos para adicionar os seguintes registros: 

1 - Adicionar Clientes 

Insira os seguintes cinco clientes na sua tabela Clientes: 

• Cliente 1: Nome: 'João Silva', Email: 'joao.silva@email.com', Cidade: 'São Paulo' 

• Cliente 2: Nome: 'Maria Santos', Email: 'maria.santos@email.com', Cidade: 'Rio de Janeiro' 

• Cliente 3: Nome: 'Pedro Almeida', Email: 'pedro.almeida@email.com', Cidade: 'Belo 
Horizonte' 

• Cliente 4: Nome: 'Ana Costa', Email: 'ana.costa@email.com', Cidade: 'Salvador' 

• Cliente 5: Nome: 'Lucas Ferreira', Email: 'lucas.ferreira@email.com', Cidade: 'Porto Alegre' 

2 - Adicionar Produtos 

Agora, adicione os cinco produtos abaixo ao seu catálogo na tabela Produtos: 

• Produto 1: Nome: 'Notebook Gamer', Preço: 5500.00 

• Produto 2: Nome: 'Mouse Sem Fio', Preço: 150.75 

• Produto 3: Nome: 'Teclado Mecânico RGB', Preço: 350.00 

• Produto 4: Nome: 'Monitor Ultrawide 29"', Preço: 1800.50 

• Produto 5: Nome: 'Headset Gamer 7.1', Preço: 499.90 

Parte 2: Desafio Final - Criando Múltiplos Relacionamentos de Venda 
Com as tabelas base populadas, vamos simular quatro cenários de vendas distintos. 
Para cada cenário, você precisará criar registros nas tabelas Pedidos e Pedido_Itens, 
garantindo que os IDs se conectem corretamente. 
Cenário de Venda 1: A Compra Simples 
• Cliente: João Silva 
• Data da Compra: Hoje  
• Item Comprado: 1 unidade do 'Notebook Gamer'. 
• Sua Tarefa: Primeiro, crie o registro do pedido na tabela Pedidos, associando-o ao cliente 
correto. Em seguida, adicione o item comprado na tabela Pedido_Itens, ligando-o ao pedido 
que você acabou de criar. 
Cenário de Venda 2: O Pedido com Múltiplos Itens 
• Cliente: Maria Santos 
• Data da Compra: 10 de setembro de 2025 
• Itens Comprados: 1 unidade do 'Mouse Sem Fio' e 1 unidade do 'Teclado Mecânico RGB', 
todos na mesma compra. 
• Sua Tarefa: Crie um único pedido para Maria Santos na tabela Pedidos. Depois, adicione 
os dois produtos na tabela Pedido_Itens, garantindo que ambos os registros de itens se 
refiram ao mesmo e único ID de pedido. 
Cenário de Venda 3: O Pedido com Múltiplas Unidades 
• Cliente: Lucas Ferreira 
• Data da Compra: 11 de setembro de 2025 
• Item Comprado: 2 unidades do 'Monitor Ultrawide 29"'. 
• Sua Tarefa: Registre o pedido para o cliente Lucas Ferreira. Ao adicionar o item na tabela 
Pedido_Itens, certifique-se de que a coluna de quantidade reflita corretamente que duas 
unidades foram compradas. 
Cenário de Venda 4: O Cliente Recorrente 
• Cliente: João Silva 
• Data da Compra: 12 de setembro de 2025 
• Item Comprado: 1 unidade do 'Headset Gamer 7.1'. 
• Sua Tarefa: Crie um segundo e novo pedido para João Silva na tabela Pedidos. Depois, 
adicione o headset como um item ligado a este novo pedido. Este cenário demonstrará 
como um mesmo cliente pode ter múltiplos pedidos registrados no sistema.
