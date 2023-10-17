import math



# EJERCICIO 1 #

# 1
def imprimir_hola_mundo() :
    return print("hola mundo")
# 2 
def imprimir_un_verso():
    return print('como un cuento \n veo la gente caer')
# 3
def raizDe2 ():
    return round(math.sqrt(2),2)
# 4
def factorial (x:int):
    sum = 1
    while x>1 :
        sum = sum * x
        x = x - 1
    return sum
# 5
def perimetro(l:int):
    return 2*math.pi*l




# EJERCICIO 2 #

# 1
def imprimir_un_saludo (nombre: str):
    return print('hola '+ nombre)
# 2
def raizCuadrada (x:int):
    return math.sqrt(x)
# 3
def fahrenheit_a_celsius (t:float):
    return (((t-32)*5)/9)
# 4
def imprimir_dos_veces (estribillo:str):
    return print((estribillo+'\n')*2)
# 5
def es_multiplo_de (n:int, m:int) -> bool :
    return (n%m==0)
# 6
def esPar (n:int) -> bool :
    return es_multiplo_de(n, 2)
# 7
def cantidadDePizzas (comensales:int, minPorciones:int):
    totalPorciones = comensales * minPorciones
    totalPizzas = totalPorciones/8
    return math.ceil(totalPizzas)  




# EJERCICIO 3 #

# 1  
def algunoEs0 (x,y) -> bool:
    return (x==0 or y==0)
# 2
def ambosSon0 (x,y) -> bool:
    return (x==0 and y==0)
# 3
def esNombreLargo(nombre:str)->bool:
    return (3<=len(nombre) and 8>=len(nombre))
# 4
def esBisiesto(año:int)->bool:
    return (año%400==0 or (año%4==0 and año%100 != 0))



# EJERCICIO 4 #

# 1
def pesoPinoIf(metros):
    altura = metros*100
    peso = 0
    if altura>300 :
        difAltura = altura - 300
        peso = 900 + 2*difAltura
    else :
        peso = peso + 3 * altura
    return peso
def pesoPino(altura):
    altura_cm= altura * 100
    peso_hasta_300 = min(900, altura_cm * 3) # calcula que si el peso es mayor a 900 sea 900 y si no, sea el peso original
    peso_mayor_300 = (altura_cm - 300) * 2 # saca 300 a la altura y calcula
    peso_estimado = peso_hasta_300 + max(0, peso_mayor_300) # si altura es <=0, no se suma nada, sino se suma el peso de más de 300
    return peso_estimado
# 2
def esPesoUtil(peso)->bool:
    return (400<=peso<=1000)
def esPesoUtilMaxMin(peso)->bool:
    return (min(400,peso)==400 and max(1000,peso)==1000)
# 3 y 4
def sirvePino(metros)->bool:
    return esPesoUtil(pesoPino(metros))



# EJERCICIO 5 #

# 1
def devolver_el_doble_si_es_par(x:int):
    if x%2==0:
        return x*2
    else:
        return x    
# 2
def devolverValor_par_elQueSigue (x:int):
    if x%2==0:
        return x
    else:
        return x+1
# 3
def devolverDobleMult3_tripleMult9 (x:int):
    if x%9==0:
        return x*3
    elif x%3==0:
        return x*2
    else:
        return x
# 4
def lindo_nombre (nombre:str):
    longitud = len(nombre)
    if longitud>=5 :
        return "tu nombre tiene muchas letras"
    else:
        return "tu nombre tiene menos de 5 caracteres"
# 5
def elRango (x:int):
    if x<5:
        return print("menor a 5")
    elif 10<=x<=20:
        return print("entre 10 y 20")
    elif x>20:
        return print("mayor a 20")
    else:
        return print("no cumple lo pedido")
# 6
def seJubila (edad:int,genero:chr):
    sexo = genero.lower()
    if edad>=65 or edad<18 or (edad>=60 and sexo=="f"):
        return print("andá de vacaciones")
    else:
        return print("te toca trabajar")
    


# EJERCICIO 6 #

# 1
def del1al10 ():
    i=1
    while i<11:
        print(i)
        i+=1
# 2
def pares10y40():
    i=10
    while i<41:
        if i%2==0:
            print(i)
        i+=1
# 3
def eco():
    i=1
    while i<11:
        print("eco")
        i+=1
# 4
def cuentaRegresiva(i:int):
    while i>0:
        print(i)
        i-=1
    print("despegue")
# 5
def viajeEnElTiempo(partida:int,llegada:int):
    print ("has arrancado tu viaje en el año: " + str(partida))
    while partida!=llegada+1:
        partida-=1
        print ("Viajó un año al pasado, estamos en el año: "+ str(partida))
    print("hemos llegado al año: " + str(llegada))
# 6
def viajeAristoteles(partida:int):
    print ("has arrancado tu viaje en el año: " + str(partida))
    while (partida-20)>=-384:
        partida-=20
        print ("Viajó un año al pasado, estamos en el año: "+ str(partida))
    print("hemos llegado al año: " + str(partida) + " que es el más próximo a Aristoteles")



# EJERCICIO 7 #

# 1
def del1al10Range ():
    for num in range (1,11):
        print(num)
# 2
def pares10y40Range():
    i=10
    for i in range(10,41):
        if i%2==0:
            print(i)
# 3
def ecoRange():
    for i in range(10):
        print("eco")
# 4
def cuentaRegresivaRange(i:int):
    for num in range (i, 0, -1):
        print(num)
    print("despegue")
# 5
def viajeEnElTiempoRange(partida:int,llegada:int):
    print ("has arrancado tu viaje en el año: " + str(partida))
    for i in range (partida-1, llegada, -1):
        print ("Viajó un año al pasado, estamos en el año: "+ str(i))
    print("hemos llegado al año: " + str(llegada))
# 6
def viajeAristotelesRange(partida:int):
    print ("has arrancado tu viaje en el año: " + str(partida))
    for i in range (partida, -385,-20):
        print ("Viajó un año al pasado, estamos en el año: "+ str(i))
    print("hemos llegado al año: " + str(i) + " que es el más próximo a Aristoteles")