# EJERCICIO 1 
def ultima_aparicion(s:[int],e:int)->int:
    for i in range(len(s)):
        if(s[i]==e):
            res = i
    return res
# EJERCICIO 2
def elementos_exclusivos(s:[int],t:[int])->[int]:
    res:[int]=[]
    for numero in s:
        if numero not in t and numero not in res:
            res.append(numero)
    for numero in t:
        if numero not in s and numero not in res:
            res.append(numero)
    return res
# EJERCICIO 3
def contar_traducciones_iguales (ing:dict,ale:dict)->int:
    keysIng = ing.keys()
    keysAle = ale.keys()
    suma = 0
    for key in keysIng:
        if key in keysAle:
            if ing[key] == ale[key]:
                suma+=1
    return suma
# EJERCICIO 4
def convertir_a_diccionario (lista:[int])->dict:
    diccionario:dict ={}
    for numero in lista :
        if numero not in diccionario.keys():
            diccionario[numero]= lista.count(numero)
    return diccionario
    

    