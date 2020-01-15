


library(Biostrings)
library(stringr)

##Ejercicio 1
secuencia1g<-DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
secuencia1g

letterFrequency(secuencia1g,"A")
letterFrequency(secuencia1g,"G")
letterFrequency(secuencia1g,"T")
letterFrequency(secuencia1g,"C")

## Ejercicio 2
secuencia2g <- DNAStringSet("AAAACCCGGT")
secuencia2g

reverseComplement(secuencia2g)->reversix
reversix
