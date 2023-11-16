import math

# 1
def contar_lineas(nombre_archivo:str)->int:
    archivo= open(nombre_archivo,"r")
    lineas = 0
    for linea in archivo:
        lineas +=1
    archivo.close()
    return print(lineas)
# 2
def existe_palabra(palabra:str, nombre_archivo:str)->bool:
    archivo= open(nombre_archivo,"r")
    for linea in archivo:
        if palabra in linea:
            return True
    archivo.close()
    return False
# EXTRA
def estructura():
    archivo= open("texto.txt","r")
    lista = []
    for linea in archivo:
        lista.append(linea)
    archivo.close()
    return lista
def separarEnLetras():
    archivo= open("texto.txt","r")
    lista = []
    for linea in archivo:
        for palabra in linea:
            lista.append(palabra)
    archivo.close()
    return lista
# 3
def cantidad_apariciones(palabra:str, nombre_archivo:str)->int:
    archivo= open(nombre_archivo,"r")
    suma = 0
    for linea in archivo:
        suma += linea.count(palabra)
    archivo.close()
    return suma



# EJERCICIO 2

# EJERCICIO 3

def inverso ()->None:
    archivo=open("texto.txt","r")
    nuevoArchivo = open("reverso.txt","w")
    lineas = archivo.readlines()[::-1]
    print(lineas)
    for i in range(len(lineas)):
        if(i==0):
            nuevoArchivo.write(lineas[i]+"\n")
        else:
            nuevoArchivo.write(lineas[i])
    archivo.close()
    nuevoArchivo.close()   

# EJERCICIO 4
def agregarTextoFinal(nombre_archivo:str, frase:str)->None:
    archivo = open(nombre_archivo, "a") # el a lee y escribe pero el puntero esta al final
    archivo.write(frase + '\n')
    archivo.close()

# EJERCICIO 5
def agregarTextoInicio(nombre_archivo:str, frase:str)->None:
    archivo = open(nombre_archivo, "r+") # el r+ lee y escribe pero el puntero esta al inicio
    archivo.write(frase + '\n')
    archivo.close()

# EJERCICIO 6

# EJERCICIO 7
