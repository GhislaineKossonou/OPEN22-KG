## Date : 10.05.2020
## VP & VT
## Script TDR6


######## EXERCICE OPTIONNEL : utilisez le package rstudioapi pour afficher le poly dans le Viewer


######## EXERCICE  : importez DesIris.txt, testez les scripts et commentez
data(iris)
# Import

iris1 <- read.table("DesIris.txt", header=TRUE, dec=".", sep=" ",stringsAsFactors = TRUE) 

# S?lection dans une table 
iris1[ ,1]   # s?lection d'une colonne par son num?ro avec [,n]
iris1[1, ]   # s?lection d'une ligne par son num?ro avec [n,]
iris1[1,2]  # s?lection d'une case avec [nlig,ncol]


iris1$SepalLength    #sélection de la longueur des sépales des fleurs du tableau iris1

iris1[c(1,5,10), ]  #sélection (des longueurs et largeurs des sépales et pétales 
ainsi que le nom des espèces) présentes aux lignes 1, 5 et 10 du tableau iris1 


iris1[-(5:30), ] #sélection (des longueurs et largeurs des sépales et pétales 
ainsi que le nom des espèces) pour les colonnes avant la colonne 5 et celles 
après la colonne 30 du tableau iris1

iris1[ ,1:4] #sélection (des longueurs et largeurs des sépales et pétales) 
pour toutes les colonnes allant de 1à 4 dans tableau iris1

iris1[c(1,5,10) , 1:4] #sélection (des longueurs et largeurs des sépales et pétales)
présentes aux lignes 1,5 et 10 pour les colonnes allant 1 à 4 dans le tableau iris1

iris1[iris1$Species=="virginica" , ] #sélection des longueurs et largeurs des
sépales et pétales) des iris appartenant à l'espèce virginica du tableau iris1

iris1[iris1$SepalLength > 7 , ] #sélection des information relatives aux iris ayant 
ayant la longueur de leurs sépales supérieure à 7 dans le tableau iris1

iris1[iris1$SepalLength < 6  &  iris1$Species=="virginica", ] #sélection 
des iris ayant la longueur de leurs sépales inférieure à 6 et appartenant 
à l'epèce Virginica dans le tableau iris1

# S?lection dans un vecteur
iris1$SepalLength[iris1$Species=="virginica"] #sélection de la longueur
des sépales des iris de l'espèce virginica dans le tableau iris1 

iris1[iris1$Species=="virginica", ]$SepalLength #sélection des iris appartenant 
à l'espèce virginica et de la longueur de leurs sépales dans le tableau iris1


# Calculs sur des sous-ensembles
apply(iris1[,1:4], MARGIN=2, mean)


tapply(iris1$SepalLength, iris1$Species, mean) #sélection des moyennes 
deslongueurs des sépales des iris par espèce du tableau iris1




######## EXERCICE  : cr?ation du vecteur slv pour "sepal length  virginica" et statistiques

# cr?er slv
slv <- iris1$SepalLength[iris1$Species=="virginica"] #création du vecteur 
donnant la longueur des sépales des iris appartenent à l'espèce virginica 
dans le tableau iris1 et leurs staistiques

# testez et commentez
mean(slv, 4) # Calcul de la moyenne des longueurs des sépales des iris 
de l'espèce virginica dans le tableau iris1. Le chiffre après la virgule de slv 
décrit le nombre de longueur de sépales sélectionnées
 
var(slv, ) #Calcul de la variance empirique des valeurs de la sélection 

sqrt(var(slv)) #Calcul de la racine carrée de la variance des valeurs 
de la sélection slv 

sd(slv) #Calcul de l'écart type des valeurs des valeurs de la sélection slv

min(slv) #Extraction de la plus petite valeur de la sélection slv

max(slv) #Extraction de la la plus grande valeur de la sélection slv

range(slv) #Extraction de l'amplitude de la sélection slv

sort(slv) #Ordonne dans l'ordre croissant les valeurs de la sélection slv

rev(slv) #Inverse l'ordre des valeurs de la sélection slv

sum(slv) #Somme des valeurs de la sélection slv

cumsum(slv) 

median(slv) #valeur médiane des valeurs de la sélection slv

quantile(slv,0.25)

quantile(slv)

length(slv) #nombre de valeurs de la sélection slv

######## EXERCICE  : cr?ation de variables

# le nom des lignes
n <- nrow(iris1)           # nrow() : nombre de lignes
noms <- paste("iris", 1:n) # paste() : coller
head(noms) # nom des iris aux entête

# le rapport de forme
rapport <- iris1$PetalLength/iris1$PetalWidth # création d'un vesteur nommé 
rapport contenant la longueur des pétales ou la longueurs des sépales du tableau
iris1  

head(rapport) affiche les prémières valeurs du rapport

# v?rification des longueurs 
length(noms); length(rapport); nrow(iris1)  #vérifie qu'il exite 33 valeurs pour
la longeur des 33 iris,33 valeurs pour la longueur du rapport et 33 lignes d'iris 

# ajout
names(iris1) #précise les noms présents aux entêtes du tableau iris1

iris1$noms <- noms #création du vecteurs portant les nom du tableau iris1
names(iris1)
iris2 <- data.frame(iris1, rapport) #intégration d"un tableau iris2 dans le rapport
names(iris2) #nommez les entêtes du tableau iris2

autre <- 1:3
iris1$num <- autre
iris1$num
# Quelle est l'esp?ce pour laquelle les p?tales ont la forme la plus ?troite 

slv1 <- iris1$Wight[iris2$Species=="virginica"]
min(slv1)

à modifier pour répondre à la question

