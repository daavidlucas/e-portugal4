algoritmo "estatisticas"
var
   nomes: vetor[1..5] de caractere
   precos: vetor[1..5] de real
   categorias: vetor[1..5] de caractere
   i: inteiro
   menor, maior, soma, media: real
inicio
   para i de 1 ate 5 faca
      escreva("Nome do produto ", i, ": ")
      leia(nomes[i])
      escreva("Preco: ")
      leia(precos[i])
      escreva("Categoria: ")
      leia(categorias[i])
   fimpara

   menor <- precos[1]
   maior <- precos[1]
   soma <- 0
   para i de 1 ate 5 faca
      se precos[i] < menor entao
         menor <- precos[i]
      fimse
      se precos[i] > maior entao
         maior <- precos[i]
      fimse
      soma <- soma + precos[i]
   fimpara
   media <- soma / 5

   escreval("")
   escreval("Estatisticas:")
   escreval("Menor preco: R$ ", menor:8:2)
   escreval("Maior preco: R$ ", maior:8:2)
   escreval("Preco medio: R$ ", media:8:2)
fimalgoritmo
