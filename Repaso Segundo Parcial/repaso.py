import random
def archivo ():
    archivo = open("texto.txt","r")
    print(type(archivo.read()))
    archivo.close()
    nuevoArchivo = open("texto.txt","r")
    print(type(nuevoArchivo.readlines()))
    return


def separarEnPalabras ():
    archivo = open("texto.txt","r")
    texto = archivo.read().split()
    return texto

def sobreescribir ():
    archivo = open("escribir.txt","w")
    print(archivo.writable())
    archivo.write("hola, estoy escribiendo")

def escribir (mensaje:str):
    leer = open("escribir.txt","r")
    texto = leer.read()
    leer.close()
    escribir = open("escribir.txt","w")
    escribir.write(texto+"\n"+mensaje)

def iterarSobreListaMovible (lista:[int]):
    for elem in lista:
        if elem>=100:
            numero = random.randint(99,103)
            lista.append(numero)
    return lista

def minimo (lista:[int]):
    if len(lista)==0:
        return None
    minimo:int = lista[0]
    for i in range(1, len(lista)):
        if minimo>lista[i]:
            minimo = lista[i]
    return minimo

def eliminarElemento (lista:list,elemento)->list:
    for i in range(len(lista)):
        if elemento == lista[i]:
            lista.pop(i)
            return lista
    return lista


def menorAMayor (lista:[int]):
    nuevaLista = lista.copy()
    ordenado:[int]=[]
    while len(ordenado) != len(lista):
        ordenado.append(minimo(nuevaLista))
        eliminarElemento(nuevaLista,minimo(nuevaLista))
    return ordenado

def splitearMultiplesParrafosConReadlines ():
    archivo = open("escribir.txt","r")
    texto = archivo.readlines()
    lista:[str]=[]
    for elem in texto:
        spliteado = elem.split()
        for palabra in spliteado:
            lista.append(palabra)
    return lista


def dictAListaTuplas (diccionario:dict)->list:
    tupla = diccionario.items()
    return tupla

def contarLetras (texto:str,letra:chr)->int:
    lista = list(texto)
    suma = 0
    for e in lista:
        if letra == e:
            suma+=1
    return suma

def separarEnPalabrasSinEspacios (texto:str):
    lista = texto.split()
    listaFinal = []
    for palabra in lista:
        for letra in palabra:
            listaFinal.append(letra)
    return listaFinal

def cantidadLetras (texto:str)->dict:
    diccionario:dict={}
    lista = texto.split()
    listaFinal = []
    for palabra in lista:
        for letra in palabra:
            listaFinal.append(letra)
    for letra in listaFinal:
        if letra not in diccionario.keys():
            diccionario[letra]=1
        else:
            diccionario[letra]+=1
    return diccionario

def diccionarioALista (diccionario:dict):
    lista:list=[]
    for elemento in diccionario.keys():
        cantidad = diccionario[elemento]
        while cantidad !=0:
            lista.append(elemento)
            cantidad-=1
    return lista

def mayusMinus (texto:str)->dict:
    diccionario:dict = {"mayusculas":0,"minusculas":0}
    lista = texto.split()
    listaFinal = []
    for palabra in lista:
        for letra in palabra:
            listaFinal.append(letra)
    for letra in listaFinal:
        if letra==letra.lower():
            diccionario["minusculas"]+=1
        else:
            diccionario["mayusculas"]+=1
    return diccionario

            
        