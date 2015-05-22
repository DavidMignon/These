#! /usr/bin/env python
#coding=utf-8
 
fo=open("file.txt","r")
lignes=fo.readlines()
 
keys=lignes[0].split()[1:] # Récupération des clés en ligne 0
print "keys :",keys
 
sortie=[] # liste des tuples de sortie
for ligne in lignes[1:]:
    for col,text_col in enumerate(ligne.split()[1:]):
        print "col : ",col
        print "text_col : ",text_col
        if text_col!="0":
            sortie.append( (ligne.split()[0],keys[col])) # rajout si != de zero
print sortie


