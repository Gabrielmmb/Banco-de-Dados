-- Implementação de um site de vendas online
-- Criação das tabelas

CREATE TABLE funcionario(
    nome varchar(100) not NULL,
    cpf varchar(11) not NULL,
    rua varchar(100) not NULL,
    cidade varchar(100) not NULL,
    bairro varchar(100) not NULL,
    data_nascimento date not NULL,
    email varchar(100) not NULL,
    telefone varchar(11) not Null,
    cargo varchar(100) not Null,
    salario real not Null,
    turno varchar(10) not null,
    PRIMARY KEY (cpf)
)

CREATE TABLE cliente(
    nome varchar(100) not NULL,
    cpf varchar(11) not NULL,
    rua varchar(100) not NULL,
    cidade varchar(100) not NULL,
    bairro varchar(100) not NULL,
    data_nascimento date not NULL,
    email varchar(100) not NULL,
    telefone varchar(11) not NULL,
    PRIMARY KEY (cpf)
)

CREATE TABLE transportadora(
    nome varchar(100) not NULL,
    cnpj varchar(11) not NULL,
    PRIMARY KEY (cnpj)
)



CREATE TABLE produto(
    id_produto integer not NULL,
    valor_compra real not NULL,
    valor_venda real not NULL,
    categoria varchar(100) not NULL,
    nome varchar(100) not NULL,
    PRIMARY KEY (id_produto)
)


CREATE TABLE compra(
    cpf_c varchar(11) not NULL,
    pagamento varchar(100) not NULL,
    id_compra integer not NULL,
    quantidade integer not NULL,
    valor_total real not NULL,
    cnpj varchar(11) not NULL,
    valor_transporte real not NULL,
    rastreio varchar(10) not NULL,
    PRIMARY KEY (id_compra),
    FOREIGN KEY (cpf_c)
    REFERENCES cliente(cpf),
    FOREIGN KEY (cnpj)
    REFERENCES transportadora(cnpj)
    
)
CREATE TABLE Compra_produto(
    cpf varchar(11) not null,
    id_produt integer not null,
    quantidade integer not null,
    PRIMARY KEY (cpf, id_produt)
)

CREATE TABLE suporte(
    id_bilhete integer not NULL,
    motivo varchar(100) not NULL,
    id_compra integer not NULL,
    PRIMARY KEY (id_bilhete) ,
    FOREIGN KEY (id_compra)
    REFERENCES compra(id_compra)
)

-- Alimentando o bando de dados 

-- Cadastro dos clientes
INSERT INTO cliente(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone)

VALUES("maria",
       "69091420049",
       "rua progresso",
       "campina grande",
       "catole",
       19991101,
       "junior_@live.com",
       "83996704122"
      
      )
      INSERT INTO cliente(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone)

VALUES("João",
       "06578299009",
       "Rua Elza Batista de Sousa, 953",
       "Surubi, PE",
       "Farol",
       19870701,
       "joao123@gmail.com",
       "81955887452"
       
      )

INSERT INTO cliente(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone)

VALUES("Pedro",
       "88478903062",
       "Rua Batista de Melo, 521",
       "Orobó, PE",
       "Centro",
       19800217,
       "pedro_123@gmail.com",
       "81977415566"
      
      )

INSERT INTO cliente(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone)

VALUES("Matheus",
       "03018493079",
       "Rua Melo Leitão, 521",
       "São Paulo, SP",
       "Morumbi",
       19760307,
       "matheus3@gmail.com",
       "11921457458"
      
      )
INSERT INTO cliente(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone)

VALUES("Rafael",
       "99413974063",
       "Rua mibr, 326",
       "Rio de Janeiro, RJ",
       "Flamengo",
       19580529,
       "rafel23@gmail.com",
       "24966987412"
     
      )


INSERT INTO cliente(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone)

VALUES("Victoria",
       "54700518030",
       "Rua luminosity, 951",
       "Rio de Janeiro, RJ",
       "Flamengo",
       19850530,
       "vic7823@hotmail.com",
       "24965884521"
      
      )

INSERT INTO cliente(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone)

VALUES("Beatriz",
       "61306446040",
       "Rua Furia, 846",
       "Belo Horizonte, MG",
       "Centro",
       19900507,
       "bea7823@hotmail.com",
       "37999865231"
       
      )


-- Cadastrando os Funcionarios

INSERT INTO funcionario(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone,cargo,salario,turno)

VALUES("joao",
       "69091420049",
       "rua progresso",
       "campina grande",
       "catole",
       19991101,
       "junior_@live.com",
       "83996704122",
       "gerente",
       10500.50,
       "Manha"
      )
      INSERT INTO funcionario(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone,cargo,salario,turno)

VALUES("Anthony",
       "81610877098",
       "rua servir,852",
       "campina grande, PB",
       "Santa Rosa",
       19961201,
       "ynohtna@live.com",
       "83987526341",
       "Vice-gerente",
       9654.52,
       "Tarde"
      )

INSERT INTO funcionario(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone,cargo,salario,turno)

VALUES("Antonia",
       "29575786033",
       "rua tribo gaules,777",
       "Rifania, SP",
       "Centro",
       19631201,
       "romanos@hotmail.com",
       "11956324178",
       "Suporte",
       777.77,
       "Manha"
      )


INSERT INTO funcionario(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone,cargo,salario,turno)

VALUES("Leticia",
       "51367122015",
       "rua piquinea, 999",
       "Rifania, SP",
       "Centro",
       19971225,
       "pistolet@hotmail.com",
       "11966542318",
       "Suporte",
       777.77,
       "Manha" 
      )
INSERT INTO funcionario(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone,cargo,salario,turno)

VALUES("Linconlau",
       "96443356004",
       "rua Não Tem como, 621",
       "São Paulo, SP",
       "Itaquera",
       19901211,
       "ntc21@hotmail.com",
       "1192458963",
       "Suporte",
       777.77,
       "Manha" 
      )

INSERT INTO funcionario(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone,cargo,salario,turno)

VALUES("Vamp",
       "60450667073",
       "rua time treveler, 1235",
       "Brasilia, DF",
       "Centro",
       19800529,
       "time123@hotmail.com",
       "61912345678",
       "Supervisor de estoque",
       1002.64,
       "Tarde"
      )


INSERT INTO funcionario(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone,cargo,salario,turno)

VALUES("Michel",
       "03559853060",
       "rua lider, 111",
       "Brasilia, DF",
       "Centro",
       19870615,
       "mch21@hotmail.com",
       "619972536",
       "Empacotador",
       805.08,
       "Manha" 
      )
INSERT INTO funcionario(nome,cpf,rua,cidade,bairro,data_nascimento,email,telefone,cargo,salario,turno)

VALUES("Lucas",
       "23.44679002",
       "rua genio, 78",
       "Brasilia, DF",
       "Centro",
       19990212,
       "brexe@hotmail.com",
       "61965412397",
       "Empacotador",
       805.08,
       "Tarde" 
      )

-- Cadastro dos produtos
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(001,
        350.0,
	500.0,
        "eletronicos",
        "tablet"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(002,
        854.0,
	900.25,
        "eletronicos",
        "Processador AMD"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(003,
        1354.09,
	1500.46,
        "eletronicos",
        "Processador Intel"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(004,
        210.87,
	462.46,
        "eletronicos",
        "Placa Mãe AMD"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(005,
        285.87,
	500.99,
        "eletronicos",
        "Placa Mãe Intel"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(006,
        97.87,
	187.99,
        "eletronicos",
        "Fonte"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(007,
        55.13,
	121.74,
        "eletronicos",
        "HD"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(008,
        80.80,
	187.46,
        "eletronicos",
        "SSD"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(009,
        78.87,
	187.46,
        "eletronicos",
        "Gabinete"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(010,
        125.87,
	249.99,
        "eletronicos",
        "Mouser Gamer"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(011,
        185.87,
	350.99,
        "eletronicos",
        "Teclado Mecanico"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(012,
        300.22,
	625.74,
        "eletronicos",
        "Fone Gamer"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(013,
        100.0,
	250.0,
        "eletronicos",
        "Mouse Gamer"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(014,
        15.13,
	45.20,
        "Cosmeticos",
        "Batom"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(015,
        10.50,
	25.00,
        "Cosmeticos",
        "Rimel"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(016,
        7.00,
	15.00,
        "Cosmeticos",
        "Esmalte"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(017,
        30.74,
	45.00,
        "Cosmeticos",
        "Creme Hidratante"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(018,
        17.13,
	50.00,
        "Cosmeticos",
        "Protetor solar"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(019,
        13.17,
	35.00,
        "Higiene Pessoal",
        "Shampoo"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(020,
        4.99,
	10.00,
        "Higiene Pessoal",
        "Sabonete"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(021,
        9.99,
	15.00,
        "Higiene Pessoal",
        "Condicionador"
            )


INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(022,
        2.99,
	7.00,
        "Roupa intima",
        "Cueca"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(023,
        2.99,
	7.00,
        "Roupa intima",
        "Calcinha"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(024,
        10.99,
	22.00,
        "Roupa Masculina",
        "Camisa Polo"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(025,
        7.99,
	12.00,
        "Roupa Masculina",
        "Camisa Regata"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(026,
        20.00,
	35.00,
        "Roupa Masculina",
        "Calça Jeans"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(027,
        55.99,
	90.00,
        "Roupa Masculina",
        "Calça esporte fino"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(028,
        200.00,
	624.00,
        "Roupa Masculina",
        "Terno"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(029,
        10.00,
	15.00,
        "Roupa feminina",
        "Vestido"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(030,
        20.00,
	35.00,
        "Roupa feminina",
        "Calça Jeans"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(031,
        10.00,
	25.00,
        "Roupa feminina",
        "Short jeans"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(032,
        10.00,
	20.00,
        "Roupa feminina",
        "Camisa"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(033,
        150.00,
	400.00,
        "Roupa feminina",
        "Vestido de festa"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(034,
        150.00,
	400.00,
        "Calçados",
        "Chuteira"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(035,
        90.00,
	150.00,
        "Calçados",
        "Tenis"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(036,
        100.00,
	200.00,
        "Calçados",
        "Sapato Alto"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(037,
        50.00,
	110.00,
        "Calçados",
        "Rasteirinha"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(038,
        60.00,
	120.00,
        "Calçados",
        "Sandalia"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(039,
        1.00,
	5.00,
        "Material Escolar",
        "Lapis"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(040,
        0.50,
	2.00,
        "Material Escolar",
        "Borracha"
            )

INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(041,
        8.00,
	25.00,
        "Material Escolar",
        "Caderno"
            )
INSERT INTO produto(id_produto,valor_compra,valor_venda,categoria,nome)

VALUES(042,
        3.50,
	7.00,
        "Material Escolar",
        "Corretivo"
            )
-- Cadastro transportadoras
INSERT INTO transportadora(nome,cnpj)

VALUES("Azul",
        "26857821097"
        
       )
INSERT INTO transportadora(nome,cnpj)

VALUES("Correios",
        "83787750037"
        
       )
INSERT INTO transportadora(nome,cnpj)

VALUES("TNT",
        "59737693051"
     
       )
       
-- Cadastro das compras

INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("69091420049",
        "Cartão de credito",
        001,
        924.92‬,
        "59737693051",
        20.00,
        "0000000001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("69091420049",
        004,
        2
                   
            
            )
INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("99413974063",
        "Cartão de credito",
        002,
        187.00,
        "83787750037",
        15.00,
        "0030004001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("99413974063",
        006,
        1
                   
            
            )

INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("61306446040",
        "Boleto",
        003,
        700.00,
        "83787750037",
        00.00,
        "0030084001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("61306446040",
        019,
        20
                   
            
            )
            
 INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("54700518030",
        "Boleto",
        004,
        300.00,
        "83787750037",
        40.00,
        "0036084001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("54700518030",
        036,
        2
                   
            )

INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("03018493079",
        "Cartao de debito",
        006,
        624.00,
        "83787750037",
        7.00,
        "0036084001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("03018493079",
        028,
        1
                   
            
            )

INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("99413974063",
        "Cartao de debito",
        005,
        180.00,
        "83787750037",
        7.00,
        "0036084201"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("99413974063",
        027,
        2
                   
            
            )
INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("06578299009",
        "Cartao de debito",
        007,
        70.00,
        "83787750037",
        36.00,
        "1036084201"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("06578299009",
        026,
        2
                   
            
            )

INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("88478903062",
        "Boleto",
        008,
        45.00,
        "83787750037",
        2.00,
        "2536884201"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("88478903062",
        022,
        3
                   
            
            )
 INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("88478903062",
        024,
        1
                   
            
            )
INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("54700518030",
        "Boleto",
        009,
        435.00,
        "83787750037",
        89.00,
        "1036884201"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("54700518030",
        023,
        5
                   
            
            )
 INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("54700518030",
        033,
        1
                   
            
            )
INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("69091420049",
        "Cartão de credito",
        001,
        924.92‬,
        "59737693051",
        20.00,
        "0000000001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("69091420049",
        004,
        2
                   
            
            )
INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("99413974063",
        "Cartão de credito",
        002,
        187.00,
        "83787750037",
        15.00,
        "0030004001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("99413974063",
        006,
        1
                   
            
            )

INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("61306446040",
        "Boleto",
        003,
        700.00,
        "83787750037",
        00.00,
        "0030084001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("61306446040",
        019,
        20
                   
            
            )
            
 INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("54700518030",
        "Boleto",
        004,
        300.00,
        "83787750037",
        40.00,
        "0036084001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("54700518030",
        036,
        2
                   
            )

INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("03018493079",
        "Cartao de debito",
        006,
        624.00,
        "83787750037",
        7.00,
        "0036084001"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("03018493079",
        028,
        1
                   
            
            )

INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("99413974063",
        "Cartao de debito",
        005,
        180.00,
        "83787750037",
        7.00,
        "0036084201"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("99413974063",
        027,
        2
                   
            
            )
INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("06578299009",
        "Cartao de debito",
        007,
        70.00,
        "83787750037",
        36.00,
        "1036084201"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("06578299009",
        026,
        2
                   
            
            )

INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("88478903062",
        "Boleto",
        008,
        45.00,
        "83787750037",
        2.00,
        "2536884201"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("88478903062",
        022,
        3
                   
            
            )
 INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("88478903062",
        024,
        1
                   
            
            )
INSERT INTO compra(cpf_c,pagamento,id_compra,valor_total,cnpj,valor_transporte,rastreio)

VALUES("54700518030",
        "Boleto",
        009,
        435.00,
        "83787750037",
        89.00,
        "1036884201"
                   
            
            )
INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("54700518030",
        023,
        5
                   
            
            )
 INSERT INTO compra_produto(cpf,id_produt,quantidade)

VALUES("54700518030",
        033,
        1
                   
            
            )
-- Cadastro do suporte
INSERT INTO suporte(id_bilhete,motivo,id_compra)

VALUES(001,
        "Produto com defeito",
        001
       )
INSERT INTO suporte(id_bilhete,motivo,id_compra)

VALUES(002,
        "Produto com defeito",
        004
       )
       
INSERT INTO suporte(id_bilhete,motivo,id_compra)

VALUES(003,
        "Entrega atrasou",
        002
       )
       
INSERT INTO suporte(id_bilhete,motivo,id_compra)

VALUES(004,
        "Recebi o produto errado",
        007
       )
