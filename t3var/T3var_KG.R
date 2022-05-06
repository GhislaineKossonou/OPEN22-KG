######## EXERCICE  : t3var

t3var <- read.table("t3var.txt", header=TRUE, sep="\t",stringsAsFactors = TRUE)
t3var$sexe<-factor(t3var$sexe)

tai<-t3var$tai
poi<-t3var$poi
sexe<-t3var$sexe

t3var[t3var$sexe=="h" & t3var$poi>80 , c(3,2)]
t3var[c(21,2,34,11) , c(3,2)]
t3var[c(21,2,30:40,11) , c(3,2)]

t3var[c(1,10,20),]

colo <- c("goldenrod3", "darkblue")[as.numeric(t3var$sexe)] 

pttype <- c(17, 16)[as.numeric(t3var$sexe)]             
# des formes de points suivant le sexe
pttype[1:10]

titre <- paste("Poids et taille de", nrow(t3var), "individus")  
# un titre
titre

plot(poi~tai,                             # les variables
     main = titre,                        # le titre
     xlab = "Taille", ylab = "Poids",     # les noms des axes
     col = colo, pch = pttype, cex = 1.5, # la couleur, le type et la taille des points
     xlim=c(145,202), ylim=c(45,88))       # limites des axes x et y

legend(150, 88, c("Femmes", "Hommes"), pch = c(17, 20), 
       col = c("goldenrod3", "darkblue"), pt.cex=1.5, cex=0.8)

mt <- mean(tai)
mp <- mean(poi)
abline(v=mt, lty=2, lwd=2, col="lightgrey")
abline(h=mp, lty=2, lwd=2, col="lightgrey")


par(mfrow=c(3, 1),mar=c(4, 4, 2, 1)) # avec c(bas, gauche, haut, droite)

plot(tai, poi)
plot(tai)
plot(poi)
plot(poi, tai)

par(mfrow=c(1, 2),mar=c(5, 4, 2, 2)) # avec c(bas, gauche, haut, droite)

plot(tai, poi)
plot(tai)


