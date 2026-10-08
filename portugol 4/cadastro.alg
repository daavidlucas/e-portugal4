algoritmo "cadastro"
var
   nomes: vetor[1..5] de caractere
   precos: vetor[1..5] de real
   categorias: vetor[1..5] de caractere
   i: inteiro
inicio
   para i de 1 ate 5 faca
      escreva("Nome do produto ", i, ": ")
      leia(nomes[i])
      escreva("Preco: ")
      leia(precos[i])
      escreva("Categoria: ")
      leia(categorias[i])
   fimpara

   escreval("")
   escreval("Produtos cadastrados:")
   para i de 1 ate 5 faca
      escreval(nomes[i], " - R$ ", precos[i]:8:2, " - ", categorias[i])
   fimpara
fimalgoritmo
