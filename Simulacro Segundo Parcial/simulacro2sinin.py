def pertenece (numero:int,lista:[int])->bool:
    for i in range (len(lista)):
        if numero==lista[i]:
            return True
    return False

# EJERCICIO 1 
def ultima_aparicion(s:[int],e:int)->int:
    for i in range(len(s)):
        if(s[i]==e):
            res = i
    return res

# EJERCICIO 2
def elementos_exclusivos(s:[int],t:[int])->[int]:
    res:[int]=[]
    for i in range(len(s)):
        if not pertenece(s[i],t) and not pertenece (s[i],res):
            res.append(s[i])
    for i in range(len(t)):
        if not pertenece(t[i],s) and not pertenece (t[i],res):
            res.append(t[i])
    return res
# EJERCICIO 3
def contar_traducciones_iguales (ing:dict,ale:dict)->int:
    keysIng = ing.keys()
    keysAle = ale.keys()
    suma = 0
    for i in range(len(keysIng)):
        if pertenece(keysIng[i],keysAle):
            if ing[keysIng[i]] == ale[keysIng[i]]:
                suma+=1
    return suma
# EJERCICIO 4
def cantidad (lista:[int],numero:int)->int:
    suma = 0
    for i in range (len(lista)):
        if lista[i]==numero:
            suma+=1
    return suma
def convertir_a_diccionario (lista:[int])->dict:
    diccionario:dict ={}
    for i in range(len(lista)) :
        if not pertenece(lista[i],diccionario.keys()):
            diccionario[lista[i]]=cantidad(lista,lista[i])
    return diccionario
    
    