import math
import random

# EJERCICIO 1 #

# 1
def pertenece (lista:list, n:int) -> bool:
    for elemento in lista :
        if(elemento==n):
            return True
    return False
# 2
def divideATodos (lista:list, n:int) -> bool:
    for elemento in lista :
        if(elemento%n!=0):
            return False
    return True
# 3
def sumaTotal (lista:list) -> int:
    suma : int = 0
    for elemento in lista:
        suma += elemento
    return suma
# 4
def ordenados (lista:list) -> bool:
    for i in range (len(lista)-1): # pongo len(lista)-1 porque si pongo len(lista) sin restarle nada, al hacer lista[i+1] del ultimo elemento, da error
        if(lista[i]>=lista[i+1]):
            return False
    return True
# 5)  Dada una lista de palabras, devolver verdadero si alguna palabra tiene longitud mayor a 7.
def hayPalabraLargas (lista:list) -> bool:
    for elemento in lista :
        if(len(elemento)>7):
            return True
    return False
# 6) Dado un texto en formato string, devolver verdadero si es palíndromo (se lee igual en ambos sentidos), falso en caso contrario
def palindromo (palabra:str) -> bool:
    lista:list = list(palabra)
    length:int = math.floor(len(lista)/2)
    for i in range (length):
        if lista[i] != lista[len(lista)-1]:
            return False
        lista.pop() # elimino el ultimo elemento asi no lo compara con nada más
    return True
# 7

# 8
def cuentaBancaria (list:list)->int:
    suma = 0
    for movimiento in list :
        if movimiento[0]=="i" or movimiento[0]=="I":
            suma+=movimiento[1]
        if movimiento[0]=="r" or movimiento[0]=="R":
            suma-=movimiento[1]
    return suma

# 9
def tresVocales(e:str)->bool:
    vocales="aeiouáéíóú"
    suma = 0
    palabra = e.lower()
    for letra in palabra:
        if letra in vocales:
            suma +=1
    if (suma>=3):
        return True
    return False




# EJERCICIO 2

# 1
def modificarParametroOriginal(lista:[int])->[int]:
    for i in range (len(lista)):
        if i%2==0:
            lista[i]=0
    return lista    
# 2
def modificarParametroInventado(lista:[int])->[int]:
    nuevaLista:list=[]
    for i in range (len(lista)):
        if i%2==0:
            nuevaLista.append(0)
        else:
            nuevaLista.append(lista[i])
    return nuevaLista
# 3
def borrarVocales(palabra:str)->str:
    vocales:str="aeiouáéíóú"
    nuevaPalabra:str = ""
    for letra in palabra:
        if letra not in vocales:
            nuevaPalabra = nuevaPalabra + letra
    return nuevaPalabra
# 4
def reemplazaVocales (palabra:str)->str:
    vocales:str="aeiouáéíóú"
    nuevaPalabra:str = ""
    for letra in palabra:
        if letra in vocales:
            nuevaPalabra = nuevaPalabra + "_"
        else:
            nuevaPalabra = nuevaPalabra + letra
    return nuevaPalabra
# 5
def daVueltaStr (palabra:str)->str:
    nuevaPalabra:str= ""
    for i in range(len(palabra)-1, -1, -1):
        nuevaPalabra += palabra[i]
    return nuevaPalabra
# 6
def eliminarRepetidos(palabra:str)->str:
    nuevaPalabra:str = ""
    for letra in palabra:
        if letra not in nuevaPalabra:
            nuevaPalabra = nuevaPalabra + letra
    return nuevaPalabra 



# EJERCICIO 3

def aprobado (notas:[int])->int:
    suma:int = 0
    for nota in notas:
        suma += nota
        if nota<4:
            res = 3
            return res
    promedio:float = suma/(len(notas))
    if promedio>=7:
        res = 1
    else:
        res= 2
    return res



# EJERCICIO 4

# 1
def listaAlumnos()->[str]:
    lista:[str] = []
    print("Agregue lista de amigos\nPonga listo para terminar su lista\n")
    while True:
        tecla = input()
        if tecla=="listo":
            return lista
        lista.append(tecla)

# 2
def cargarSube()->[(str,int)]:
    lista:list = []
    while True:
        accion = input("Diga si quiere cargar 'C' o pagar 'D' su sube\nPonga 'X' para terminar su lista\n").lower()
        if accion=="c":
            cantidad = input("¿Cuánto desea cargar?\n")
            tupla = ("C",cantidad)
            lista.append(tupla)
        elif accion=="d":
            cantidad = input("¿Cuánto desea retirar?\n")
            tupla = ("D",cantidad)
            lista.append(tupla)
        elif accion=="x":
            break
    return lista
# 3
def sieteYMedio ()->str:
    suma:float = 0.0
    while True:
        if suma>7.5:
            return print("PERDISTE 😥, sumaste: "+ str(suma))
        if suma==7.5:
            return print("GANASTE!! 🎉, sumaste: 7.5")
        print("Diga si quiere otra 'carta' o 'plantarse'\nHasta ahora sumas, en total: "+str(suma))
        accion = input().lower()
        if accion=="carta":
            nuevaCarta = random.randint(1,12)
            if nuevaCarta>=10:
                suma+=0.5
            elif nuevaCarta<=7:
                suma+=nuevaCarta
            print("Tu carta fue: "+ str(nuevaCarta))
        elif accion=="plantarse":
            break
    return print("Te Plantaste con: "+ str(suma) +" puntos totales")


# EJERCICIO 5

# 1
def perteneceACadaUno(lista:[[int]],numero:int)->[bool]:
    res:[bool] = []
    for i in lista:
        if pertenece(i,numero):
            res.append(True)
        else:
            res.append(False)
    return res
# 2
