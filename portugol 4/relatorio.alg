algoritmo "relatorio"
var
   nomes: vetor[1..5] de caractere
   precos: vetor[1..5] de real
   categorias: vetor[1..5] de caractere
   unicas: vetor[1..5] de caractere
   i, j, qtdUnicas: inteiro
   achou: logico
   valor, menor, maior, soma, media, auxPreco: real
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

   escreva("Valor de referencia para o filtro: ")
   leia(valor)

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
   escreval("=============== RELATORIO FINAL ===============")

   escreval("")
   escreval("Produtos cadastrados:")
   para i de 1 ate 5 faca
      escreval(nomes[i], " - R$ ", precos[i]:8:2, " - ", categorias[i])
   fimpara

   escreval("")
   escreval("Produtos acima de R$ ", valor:8:2, ":")
   para i de 1 ate 5 faca
      se precos[i] > valor entao
         escreval(nomes[i], " - R$ ", precos[i]:8:2, " - ", categorias[i])
      fimse
   fimpara

   escreval("")
   escreval("Produtos abaixo de R$ ", valor:8:2, ":")
   para i de 1 ate 5 faca
      se precos[i] < valor entao
         escreval(nomes[i], " - R$ ", precos[i]:8:2, " - ", categorias[i])
      fimse
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
      escreval(nomes[i], " - R$ ", precos[i]:8:2)
   fimpara

   escreval("")
   escreval("Preco decrescente:")
   para i de 5 ate 1 passo -1 faca
      escreval(nomes[i], " - R$ ", precos[i]:8:2)
   fimpara

   escreval("")
   escreval("Categorias unicas (", qtdUnicas, "):")
   para j de 1 ate qtdUnicas faca
      escreval("- ", unicas[j])
   fimpara

   escreval("")
   escreval("Estatisticas:")
   escreval("Menor preco: R$ ", menor:8:2)
   escreval("Maior preco: R$ ", maior:8:2)
   escreval("Preco medio: R$ ", media:8:2)
   escreval("===============================================")
fimalgoritmo
