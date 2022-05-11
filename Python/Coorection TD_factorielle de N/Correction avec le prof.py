#factorielle_N
#initialisation 
fact = 1
Resultat = " "

#récupérer la valeur de N 
ch_N= input ("quelle est la factorielle que vous voulez calculer?:\n")
N = int(ch_N)
#tester si N = 0
if N != 0 :
    #boucler
    for i in range (1, (N+1)):
        fact = fact * i
#Afficher le résultat
print ("la factorielle de " + str(N) + " est " + str (fact))


    # boucler
