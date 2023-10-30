from queue import LifoQueue as Pila
import math
import random

# ADICIONAL
def invertirPila (pila:Pila):
    p = Pila()
    while not pila.empty():
        p.put(pila.get)
        return p

# EJERCICIO 8
def generar_nros_al_azar(n:int,desde:int,hasta:int)->Pila:
    p = Pila()
    while n>0:
        rnd = random.randint(desde,hasta)
        p.put(rnd)
        n-=1
    return p


# EJERCICIO 9
def cantidad_elementos(p:Pila)->int:
    pila = Pila()
    suma = 0
    while not p.empty():
        pila.put(p.get())
        suma+=1
    p = invertirPila(pila)
    return print(suma)


# EJERCICIO 10
def buscar_el_maximo(p:Pila)->int:
    pila = invertirPila(p)
    if pila.empty():
        return None
    valor = pila.get()
    while not pila.empty():
        valor2 = pila.get()
        if valor2 > valor:
            valor = valor2
    return valor