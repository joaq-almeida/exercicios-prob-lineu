
#-----------------------------------------------------------------------
# Arranjo, permutação e combinação
#-----------------------------------------------------------------------

# Arranjo
## A ordem importa, ou seja, AB é diferente de BA
## Se NÃO há repetição, arranjo simples
## Se há repetição, arranjo completo

#-----------------------------------------------------------------------

## Arranjo sem repetição

### Todos os agrupamentos formados com n elementos tomados de 
### p em p, sabendo que o valor de n > p
### Não existem elementos repetidos
### A ordem dos elementos importa
n <- 15
p <- 5
factorial(n)/factorial((n-p))

### Exemplo: as senhas de um determinado banco são 
### formadas por quatro dígitos, sendo que os algarismos 
### utilizados não poderiam aparecer duas vezes na mesma 
### senha. Sendo assim, qual e a quantidade de senhas 
### possíveis para esse sistema?
n <- 10
p <- 4
factorial(n)/factorial((n-p))

#-----------------------------------------------------------------------

## Arranjo com repetição (arranjo completo)

### Todos os agrupamentos formados com n elementos tomados 
### de p em p, sabendo que o valor de n > p
### Existem elementos repetidos
### A ordem dos elementos importa
n <- 5
p <- 2
n^p

### Exemplo: as senhas de um determinado banco são formadas 
### por quatro dígitos, sendo que os algarismos utilizados 
### podem aparecer duas vezes na mesma senha. Sendo assim, 
### qual e a quantidade de senhas possíveis para esse sistema?
n <- 10
p <- 4
n^p

#-----------------------------------------------------------------------

# Permutação
## Caso especial de arranjo em que n = p
## A ordem importa, ou seja, AB é diferente de BA
## Se NÃO há repetição, permutação simples
## Se há repetição, permutação com repetição

#-----------------------------------------------------------------------

## Permutação simples

### Todos os agrupamentos ordenados que podem ser formados 
### com os n elementos de um conjunto.
n <- 4
factorial(n)

### Exemplo: 3 alunos apresentarão um trabalho no fim 
### de um curso. A ordem de apresentação será sorteada. 
### Quantas sequências distintas podem ocorrer?
factorial(3)

#-----------------------------------------------------------------------

## Permutação com repetição

### Todos os agrupamentos ordenados que podem ser formados 
### com os n elementos de um conjunto quando existem elementos 
### que se repetem.

n <- 10
k1 <- 3
k2 <- 2

factorial(n)/(factorial(k1)*factorial(k2))

### Exemplo: Anagramas são todos os reordenamentos possíveis 
### que podemos criar com as letras de uma palavra. 
### Quantos anagramas podemos gerar com as letras da 
### palavra BANANA?
n <- 6
k1 <- 3
k2 <- 2

factorial(6)/(factorial(3)*factorial(2))

#-----------------------------------------------------------------------

# Combinação
## A ordem NÃO importa, ou seja, AB é igual a BA
## Se NÃO há repetição, combinação simples
## Se há repetição, combinação com repetição

#-----------------------------------------------------------------------

## Combinação simples

### Todos os agrupamentos que podem ser formados com os 
### n elementos de um conjunto em que a ordem não importa, 
### por exemplo: AB=BA.

n=10
p=3
factorial(n)/(factorial(p)*factorial((n-p)))

### Exemplo: um campeonato teve 10 times inscritos. 
### Os jogos iniciais serão sorteados. 
### Quantas combinações são possíveis?
n = 10
p = 2
factorial(n)/(factorial(p)*factorial((n-p)))

#-----------------------------------------------------------------------

## Combinação com repetição

### Todos os agrupamentos que podem ser formados com os 
### n elementos de um conjunto em que a ordem não importa, 
### por exemplo: AB=BA. Contudo, elementos se repetem
n=10
p=3
factorial(n+p-1)/(factorial(p)*factorial((n-1)))

### Exemplo: uma lanchonete fornece 5 opções de lanche.
### Se um cliente resolve levar 3 lanches, de quantas 
### maneiras distintas ele pode fazer esse pedido?
n=5
p=3
factorial(n+p-1)/(factorial(p)*factorial((n-1)))  

#-----------------------------------------------------------------------
# Exercícios
#-----------------------------------------------------------------------

## De quantas maneiras podemos organizar 3 livros de um total de 
## 10 livros distintos em uma estante?

n=10
p=3
combinacoes_dos_livros <- factorial(n+p-1)/(factorial(p)*factorial((n-1)))

#-----------------------------------------------------------------------

## Considere que placas de veículos são compostas por uma parte 
## inicial com 4 letras outra parte com 3 algarismos. 
## Letras e algarismos podem se repetir. 
### Quantas placas podem ser geradas?

qtd_letras <- 26
qtd_nums <- 10
qtd_letras_placa <- 4
qtd_nums_placa <- 3

arranjo_de_letras_da_placa <- (qtd_letras ^ qtd_letras_placa)
arranjo_de_num_da_placa <- (qtd_nums ^ qtd_nums_placa)

placa_possiveis <- arranjo_de_letras_da_placa * arranjo_de_num_da_placa

#-----------------------------------------------------------------------

## Anagramas são todos os reordenamentos possíveis que 
## podemos criar com as letras de uma palavra. Quantos anagramas 
## podemos gerar com as letras da palavra BRASIL?

#-----------------------------------------------------------------------

## De quantas formas podemos ordenar 6 bolas sendo que 2 
## são verdes, 1 é azul e 3 são vermelhas?

#-----------------------------------------------------------------------

## Um pesquisador precisa escolher três cobaias de 
## um grupo de oito cobaias. Determine o número de 
## maneiras que ele pode realizar a escolha.

#-----------------------------------------------------------------------

## Uma vendedora de cosméticos fez uma promoção com 
## opções de cores de batons em que o cliente pode 
## escolher 3 cores para montar um kit. 
## De quantas maneiras distintas podemos montar um kit?

#-----------------------------------------------------------------------

## Discuta o que os comandos a seguir fazem

ex1 <- expand.grid(c('a', 'b', 'c'),
                   c('d', 'e', 'f'))

ex1
nrow(ex1)
3^2

ex2 <- combn(c('a', 'b', 'c', 'd'), 2)
ex2
ncol(ex2)
choose(4,2)

#-----------------------------------------------------------------------
