L1 = [1.2, 4.0, -5.1, 8.6, -3.7]
i = 2
# on récupère l'élément d'indice 2 dans la variable elt
elt = L1[i]
# on l'affiche dans la console
print(elt)
# on affiche l'élément d'indice 0 dans la console
print(L1[0])


ch = "une chaîne est une séquence"
premLettre = ch[0]
print("la première lettre est " + premLettre)





mot = "informatique"
debutMot = mot[0:4]
debutMot = mot[:4]
milieuMot = mot[5:7]
finMot = mot[5:]
print(debutMot)
print(milieuMot)
print(finMot)
debutMot = mot[0:5]
print(debutMot)



#les intervalles
range(1,5,1)




    
# les structures itératives
for i in range (1,5) :
    double = i * 2
    print("le double de "+str (i) + " est " + str (double)
)
    

ch = ""
list1 = ["Python,","un ","langage ","sympa"]
for j in list1:
    # ch est un accumulateur qui concatène les éléments de la liste
    # (on l'a initialisé avec une chaine vide)
    ch = ch + "" + j
print(ch)
 
 
#les boucles while

rep = 0


