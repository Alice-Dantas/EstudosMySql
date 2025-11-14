# Construindo o Banco "EmpresaVendas"

## Parte 1: Criação da Estrutura (DDL)

### Crie o Banco de Dados:
   
● Crie um novo banco de dados chamado EmpresaVendas e o selecione.


### Crie as Tabelas:

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

### Popule as Tabelas Base:


● Adicionar Clientes 

○ Cliente 1: Nome: 'João Silva', Email: 'joao.silva@email.com', Cidade: 'São Paulo' 

○ Cliente 2: Nome: 'Maria Santos', Email: 'maria.santos@email.com', Cidade: 'Rio de Janeiro' 

○ Cliente 3: Nome: 'Pedro Almeida', Email: 'pedro.almeida@email.com', Cidade: 'Belo 
Horizonte' 

○ Cliente 4: Nome: 'Ana Costa', Email: 'ana.costa@email.com', Cidade: 'Salvador' 

○ Cliente 5: Nome: 'Lucas Ferreira', Email: 'lucas.ferreira@email.com', Cidade: 'Porto Alegre' 


● Adicionar Produtos 

○ Produto 1: Nome: 'Notebook Gamer', Preço: 5500.00 

○ Produto 2: Nome: 'Mouse Sem Fio', Preço: 150.75 

○ Produto 3: Nome: 'Teclado Mecânico RGB', Preço: 350.00 

○ Produto 4: Nome: 'Monitor Ultrawide 29"', Preço: 1800.50 

○ Produto 5: Nome: 'Headset Gamer 7.1', Preço: 499.90 


## Parte 3: Criando Múltiplos Relacionamentos de Venda 

### Cenário de Venda 1: A Compra Simples 

• Cliente: João Silva 

• Data da Compra: Hoje   

• Item Comprado: 1 unidade do 'Notebook Gamer'. 

### Cenário de Venda 2: O Pedido com Múltiplos Itens 

• Cliente: Maria Santos 

• Data da Compra: 10 de setembro de 2025 

• Itens Comprados: 1 unidade do 'Mouse Sem Fio' e 1 unidade do 'Teclado Mecânico RGB', 
todos na mesma compra. 

### Cenário de Venda 3: O Pedido com Múltiplas Unidades 

• Cliente: Lucas Ferreira 

• Data da Compra: 11 de setembro de 2025 

• Item Comprado: 2 unidades do 'Monitor Ultrawide 29"'. 

### Cenário de Venda 4: O Cliente Recorrente 

• Cliente: João Silva 

• Data da Compra: 12 de setembro de 2025 

• Item Comprado: 1 unidade do 'Headset Gamer 7.1'. 


## Comandos SQL

Você pode visualizar os comandos SQL desse cenário no arquivo [EmpresaVendas.sql](EstudosMySql/comandos
/EmpresaVendas.sql).
