from queue import Queue as Cola
import math
import random

# ADICIONAL
def duplicarCola (cola:Cola):
    c = Cola()
    while not cola.empty():
        c.put(cola.get)
        return c


# EJERCICIO 13
def generar_nros_al_azar(n:int,desde:int,hasta:int)->Cola:
    c = Cola()
    while n>0:
        rnd = random.randint(desde,hasta)
        c.put(rnd)
        n-=1
    return c

# EJERCICIO 14
def cantidad_elementos(c:Cola)->int:
    suma = 0
    while not c.empty():
        c.get()
        suma+=1
    print("Numero de elementos: ", suma)
    return suma

colita = generar_nros_al_azar(10,10,50)
print(colita.queue)

# EJERCICIO 15
def buscar_mayor(c:Cola)->int:
    nuevaCola = duplicarCola(c)
    if nuevaCola.empty():
        return None
    valor = nuevaCola.get()
    while not nuevaCola.empty():
        valor2 = nuevaCola.get()
        if valor2 > valor:
            valor = valor2
    return valor
print (buscar_mayor(colita))
print(colita.queue)

# EJERCICIO 16

# 1
def armar_secuencia_de_bingo()->Cola[int]:
    cola = Cola()
    lista:list[int]=[]
    for i in range(100):
        lista.append(i)
    random.shuffle(lista)
    for i in lista:
        cola.put(i)
    return cola
# 2
def jugar_carton_de_bingo(carton:list[int],bolillero:Cola[int])->int:
    contador = 0
    jugadas = 0
    bolillero_aux = duplicarCola(bolillero)
    while contador < 12 : # Dice que el carton tiene 12 numeros entre 1 y 99
        nuevaBolilla = bolillero_aux.get()
        if nuevaBolilla in carton:
            contador += 1
        jugadas +=1
        bolillero.put(nuevaBolilla)
    while not bolillero_aux.empty():
        nuevaBolilla = bolillero_aux.get()
        bolillero.put(nuevaBolilla)
    return jugadas


# EJERCICIO 17


# EJERCICIO 18
