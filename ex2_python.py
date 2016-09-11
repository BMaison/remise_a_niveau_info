"""
Remise à niveau en informatique - Programmation en Python
Auteur : Blandine Maison
"""

import csv # nécessaire pour la gestion de fichiers csv
import sys # nécessaire pour avoir des précisions sur les erreurs se produisant
            #lors d'un accès fichier
import os # nécessaire pour la gestion de dossiers

def lire_fichier_csv( nom_fichier, afficher_lignes = False ):
    """
    La fonction lire_fichier_csv est un exemple de lecture.
    nom_fichier est une chaîne de caractères désignant le nom du fichier à ouvrir
    Cette fonction de test permet de compter le nombre de lignes
    et éventuellement les lignes elle-même
    """
    try:
        file_descriptor = open( nom_fichier, "r", encoding="utf-8" )#
        csv_reader = csv.reader(file_descriptor, delimiter = ";")
        liste = [] # Création d'une liste vide
        for ligne in csv_reader:
            i=0
            for ligne[0] in csv_reader and i in range(0):
                print(ligne.index("Note_finale"))
                i+=1
            #print(ligne[0:3])
            #del ligne[3:ligne.index("Note_finale")]
            #liste.append(ligne)
        return(liste)
        file_descriptor.close()
    except:
        print("Problème de fichier : ", sys.exc_info()[0])
                #permet de retourner des informations sur l'erreur générée

"""
def ecrire_fichier_csv(nom_fichier, contenu):
    try:
        file_descriptor = open( nom_fichier[:-4]+"_ex2.csv", "w", encoding="utf-8" )
        csv_writer = csv.writer(file_descriptor, dialect="unix", delimiter = ";")
            # dialect "unix" évite l'insertion de lignes vide
        for ligne in contenu:
            csv_writer.writerow(ligne)
        file_descriptor.close()
    except:
        print("Problème de fichier : ", sys.exc_info()[0])
            #permet de retourner des informations sur l'erreur générée
"""

if __name__ == "__main__":
    for element in os.listdir('Donnees'):
        if os.path.isdir(element):
            print("'%s' un ficher" % element)
        else:
            print("'%s' est un dossier" % element)
            liste_fichiers = os.listdir("Donnees/"+element)
            for nom_fichier in liste_fichiers:
                if "notes" in nom_fichier and "_etu" not in nom_fichier:
                    # Que pour les fichiers de notes
                    print(nom_fichier)
                    a=lire_fichier_csv("Donnees/"+element+"/"+nom_fichier)
                    #ecrire_fichier_csv("Donnees/"+element+"/"+nom_fichier,a)

