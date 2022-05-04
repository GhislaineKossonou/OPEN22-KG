plot(1)

#02/05/2022
#Ghislaine KOSSONOU
# Exemples R pour OPEN 22
getwd()
x <- c(4, 5, 7, 4, 3, 9)
x*2
mean(x)
mean(x,na.rm = TRUE)

read.table()
y <- x*3+2 + rnorm(x)

y[1]
y[c(1,3)]
y[x<20]

plot(x, y)
hist(rnorm(45000000))



casino <- read.csv2("casino.csv", row.names = 1)
filter(casino, Couleur_voiture=="bleu")

casino

# Sélectionner les lignes  bleues 
# et ne garder que les colonnes Score et Gain
# Sans dplyr

# Avec dplyr


install.packages('tinytex')
tinytex::install_tinytex()
