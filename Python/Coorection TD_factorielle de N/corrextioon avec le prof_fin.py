fact = 1
N = -1
#boucler tant que N est négatif
while (N <0) :
    #récupérer la  valeur de N
    ch_N= input ("quelle est la factorielle que vous voulez calculer?:\n")
    N = int(ch_N)
    #tester si N < 0
    if N < 0 :
        #Ecrire un message
        print("erreur: valeur négative interdite\n")
        
#tester si N supérieur 0
if N > 0:
    #boucler
    for i in range (1, (N+1)):
        fact = fact * i
    #Afficher le résultat
    print ("la factorielle de " + str(N) + " est " + str (fact))
else : #si N = 0
    print("la factorielle de " + str(N) + " est " + str (fact))
     