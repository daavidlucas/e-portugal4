algoritmo "categorias"
var
   nomes: vetor[1..5] de caractere
   precos: vetor[1..5] de real
   categorias: vetor[1..5] de caractere
   unicas: vetor[1..5] de caractere
   i, j, qtdUnicas: inteiro
   achou: logico
inicio
   para i de 1 ate 5 faca
      escreva("Nome do produto ", i, ": ")
      leia(nomes[i])
      escreva("Preco: ")
      leia(precos[i])
      escreva("Categoria: ")
      leia(categorias[i])
   fimpara

   qtdUnicas <- 0
   para i de 1 ate 5 faca
      achou <- falso
      para j de 1 ate qtdUnicas faca
         se unicas[j] = categorias[i] entao
            achou <- verdadeiro
         fimse
      fimpara
      se nao achou entao
         qtdUnicas <- qtdUnicas + 1
         unicas[qtdUnicas] <- categorias[i]
      fimse
   fimpara

   escreval("")
   escreval("Categorias unicas:")
   para j de 1 ate qtdUnicas faca
      escreval("- ", unicas[j])
   fimpara
   escreval("Total: ", qtdUnicas)
fimalgoritmo
