algoritmo "filtro"
var
   nomes: vetor[1..5] de caractere
   precos: vetor[1..5] de real
   categorias: vetor[1..5] de caractere
   i: inteiro
   valor: real
   opcao: caractere
inicio
   para i de 1 ate 5 faca
      escreva("Nome do produto ", i, ": ")
      leia(nomes[i])
      escreva("Preco: ")
      leia(precos[i])
      escreva("Categoria: ")
      leia(categorias[i])
   fimpara

   escreva("Valor de referencia: ")
   leia(valor)
   escreva("Listar acima (A) ou abaixo (B)? ")
   leia(opcao)

   escreval("")
   escreval("Resultado do filtro:")
   para i de 1 ate 5 faca
      se (opcao = "A") e (precos[i] > valor) entao
         escreval(nomes[i], " - R$ ", precos[i]:8:2, " - ", categorias[i])
      fimse
      se (opcao = "B") e (precos[i] < valor) entao
         escreval(nomes[i], " - R$ ", precos[i]:8:2, " - ", categorias[i])
      fimse
   fimpara
fimalgoritmo
