iris1[ ,1]   # sélection d'une colonne par son numéro avec [,n]
iris1[1, ]   # sélection d'une ligne par son numéro avec [n,]
iris1[1,2]  # sélection d'une case avec [nlig,ncol]
iris1$SepalLength # sélection de la longueur des sépales parmis d'autres informations
iris1[c(1,5,10), ]# sélection des objets des lignes 1, 5 et 10
iris1[-(5:30), ]# sélection des colonnes allant de 5 à 30
iris1[ ,1:4] # sélection des colonnes allant de 1 à 4
iris1[c(5,1,10) , c(2,1,4,3)]# sélection des objects présents dans lkes lignes 5,1 et 10 
et des objets présents dans les lignes 2, 1,4, et 3
iris1[iris1$Species=="virginica", ] # sélection conditionnelle
iris1[iris1$SepalLength > 7 , ]#sélection de tous les objets appartenant à 
l'espèce Virginica qui ont des sépales de longueur supérieur à 7 dans le tableau 
iris1

iris1[iris1$SepalLength < 6  &  iris1$Species=="virginica" , ] #sélection dans 
le tableau iris1, de tous les objets ayant la longueur de leurs sépales inférieure 
à 6 et appartenant à l'espèce virginica présente dans le tableau iris1

iris1[(iris1$SepalLength < 6  &  iris1$Species=="virginica") | iris1$Species=="setosa"  , ]
 #sélection dans le tableau iris1 de tous les objets ayant la longueur 
de leurs sépales inférieure à 6 et appartenant à l'espèce virginica présente 
dans le tableau iris1 ou à l'espèce setosa présente dans le tableau iris1
