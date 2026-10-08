algoritmo "ordenacao"
var
   nomes: vetor[1..5] de caractere
   precos: vetor[1..5] de real
   categorias: vetor[1..5] de caractere
   i, j: inteiro
   auxPreco: real
   auxNome, auxCat: caractere
inicio
   para i de 1 ate 5 faca
      escreva("Nome do produto ", i, ": ")
      leia(nomes[i])
      escreva("Preco: ")
      leia(precos[i])
      escreva("Categoria: ")
      leia(categorias[i])
   fimpara

   para i de 1 ate 4 faca
      para j de 1 ate 5 - i faca
         se precos[j] > precos[j + 1] entao
            auxPreco <- precos[j]
            precos[j] <- precos[j + 1]
            precos[j + 1] <- auxPreco
            auxNome <- nomes[j]
            nomes[j] <- nomes[j + 1]
            nomes[j + 1] <- auxNome
            auxCat <- categorias[j]
            categorias[j] <- categorias[j + 1]
            categorias[j + 1] <- auxCat
         fimse
      fimpara
   fimpara

   escreval("")
   escreval("Preco crescente:")
   para i de 1 ate 5 faca
      escreval(nomes[i], " - R$ ", precos[i]:8:2, " - ", categorias[i])
   fimpara

   para i de 1 ate 4 faca
      para j de 1 ate 5 - i faca
         se precos[j] < precos[j + 1] entao
            auxPreco <- precos[j]
            precos[j] <- precos[j + 1]
            precos[j + 1] <- auxPreco
            auxNome <- nomes[j]
            nomes[j] <- nomes[j + 1]
            nomes[j + 1] <- auxNome
            auxCat <- categorias[j]
            categorias[j] <- categorias[j + 1]
            categorias[j + 1] <- auxCat
         fimse
      fimpara
   fimpara

   escreval("")
   escreval("Preco decrescente:")
   para i de 1 ate 5 faca
      escreval(nomes[i], " - R$ ", precos[i]:8:2, " - ", categorias[i])
   fimpara
fimalgoritmo
