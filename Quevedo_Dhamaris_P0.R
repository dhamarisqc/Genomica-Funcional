

### Encontrar la secuencia correspondiente de aminoácidos 

library(Biostrings)

aminoacidos <- readRNAStringSet("Microbiologia/Semestre 6/Genomica funcional/first.fasta")
aminoacidos

translate(aminoacidos)


##Ejercicio 1. Utilizando una librería específica 
secuencias1<-DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
secuencias1

letterFrequency(secuencias1,c("A","G","T","C"), as.prob = FALSE)


## Ejercicio 1.0, utilizando una biblioteca NO especializada 

#Utilizando la secuencia dada, esta se convirtio en un vector, siendo cada base un elemento de dicho vector

sec1_0<-c("A","G","C","T","T","T","T","C","A","T","T","C","T","G","A","C","T","G","C","A","A","C","G","G","G","C","A","A","T","A","T","G","T","C","T","C","T","G","T","G","T","G","G","A","T","T","A","A","A","A","A","A","A","G","A","G","T","G","T","C","T","G","A","T","A","G","C","A","G","C")
sec1_0

length(sec1_0)

#El vector se convirtió en un factor para que cada base adquiriera un "level" y se pudieran contabilizarf
sequ1<- as.factor(sec1_0)
sequ1

#Con esta función te permite contabilizar los caracteres que se encuentran en el factor, en este caso "A,T,G,C"
table(sequ1)

## Ejercicio 2. Utilizando una librería especializada 
secuencias2 <- DNAStringSet("AAAACCCGGT")
secuencias2

reverseComplement(secuencias2)->reverso
reverso

##Ejercicio 2.0,utilizando una librería no especializada

## Se enumeraron las bases para facilitar el procedimiento al remplazarlas por sus complementarias
secuuu<- c ("A1","A2","A3","A4","C5","C6","C7","G8","G9","T10")
secuuu

#Se remplazaron las "A" por su complemento "T"
camb<-replace(secuuu,secuuu=="A1"|secuuu=="A2"|secuuu=="A3"|secuuu=="A4","T")
camb

#Se remplazaron las "C" por su complemento "G, a partir del cambio generado anteriormente 
camb1<- replace(camb,camb=="C5"|camb=="C6"|camb=="C7","G")
camb1

#Se remplazaron las "G" por su complemento "C",a partir del cambio generado anteriormente 
camb2<- replace(camb1,camb1=="G8"|camb1=="G9","C")
camb2

#Se remplazaron las "T" por su complemento "A",a partir del cambio generado anteriormente 
camb3<- replace(camb2,camb2=="T10","A")
camb3

#Ahora unicamente se coloca en reversa el ultimo vector generado para obtener así el "reverso complmento"
reversil<-rev(camb3)
reversil

## Solo se convirtió a un DNAString
reversocomplemento <- DNAString("ACCGGGTTTT")
reversocomplemento








