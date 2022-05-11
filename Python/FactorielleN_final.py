fact = 1
N = 5
i = 1
Resultat = " "
for i in range (1,6):
    fact = fact * i
Resultat = (str(fact))
print ("la factorielle de " + str(N) + " est " + str (Resultat))


#calcul de la factorielle de N 
fact = 1
N = i
Resultat = " "
for i in range (1, (i+1)):
    fact = fact * i
Resultat = (str(fact))
print ("la factorielle de " + str(N) + " est " + str (Resultat))
#ça ne marche pas car La valeur de N n'est pas définie

#afficher le type de N
print (type(N))

#Résolution du problème par modifiant le type (transtypage) de la saisie de l’utilisateur.
N = int(N)
print (type(N))
# je ne comprends âs cette question, pour moi N est s'affiche déjà en entier...

# fonction finale pour calcul de factorielle N
fact = 1
N = int(input("valaur de N: "))
Resultat = " "
for i in range (1, (N+1)):
    fact = fact * i
Resultat = str(fact)
print ("la factorielle de " + str(N) + " est " + str (Resultat))

#Essai avec 0 validé


#Contrôle de code et affichage  de message adapté
    #cas d_ecriture d'un entier stritement negatif
if (N <0) :
    Resultat = 1
    print ("la factorielle de " + str(N) + " est " + "1")


    



