

#Importation des données dans un objet t3var####
t3var <- read.table("t3var.txt", header=TRUE, sep="\t",stringsAsFactors = TRUE)

#Identification des noms des variables de ce jeu de données####
names(t3var)
dim(t3var)
str(t3var)

#Définition du contexte statistique (combien d’individus, de variables, types des variables)


t3var[c(1,10,20), ]
# renvoie les informations présentes aux lignes 1, 10 et 20

sexe <- t3var$sexe
tai <- t3var$tai
poi <- t3var$poi
# Creation des variables sexe( pour le sexe), tai (pour la taille), poi (pour le poids)

#Sélectionner les femmes de plus de 170 cm. Combien sont-elles ?####
f170sup <- t3var[sexe=="f" & tai>170, ]
nrow(f170sup) # Nombre de femmes aillant une taille supérieure à 170cm

#Pour les individus 10 à 20, donner toutes les variables sauf la première####
t3var[10:20 , -1]


#Sélectionner les femmes de taille supérieure à la taille moyenne des femmes, donner l’effectif de ce sous-groupe####
moytf <- mean(tai[sexe=="f"])
ftaisup <- t3var[sexe=="f" & tai>moytf, ]
nrow(ftaisup) #Effectif des femmes dont la taille est supérieure à la moyenne

#Donner la moyenne des poids pour tous####
mean(poi)

#Donner la moyenne des poids par sexe####
  #Donner la moyenne des poids pour les femmes 
mean(poi[sexe=="f"]) #Pour les femmes
mean(poi[sexe=="h"]) # Pour les hommes

  #une autre méthode pour la moyenne du poids par sexe
tapply(poi, sexe, mean) 

#Donner la variance des poids pour tous, puis par sexe (la variance estimée ou de l’échantillon)####
tapply(poi, sexe, var) 

#Écrire une fonction qui calcule l’indice de masse corporelle (IMC=masse/taille2, taille en m)####

IMC <- t3var$poi / (t3var$tai)^2
t3var$IMC <- IMC
t3var$IMC



