# Adicional
def capicua(lista:list):
    if lista == lista[::-1]:
        return True
    return False

# Ejercicio 1
def intercalar(s1: list, s2: list) -> list:
    nuevaLista:list=[]
    for i in range(len(s1)):
        nuevaLista.append(s1[i])
        nuevaLista.append(s2[i])
    return nuevaLista

# Ejercicio 2
def pos_nesima_aparicion(s: list, n: int, elem: int) -> int:
    total = n+0
    for i in range(len(s)):
        if s[i]==elem:
            total-=1
        if total==0:
            return i
    return -1

# Ejercicio 3
def matriz_espejada(m: list) -> bool:
    if len(m)==0:
        return True
    for i in range(len(m)):
        if not capicua(m[i]):
            return False
    return True

# Ejercicio 4
def cuenta_posiciones_por_caballo(caballos: list, carreras: dict) -> dict:
    diccionario:dict={}
    for caballo in caballos:
        diccionario[caballo]=[0]*len(caballos)
    for carrera in carreras.items():
        for i in range(len(carrera[1])):
            horse = diccionario[carrera[1][i]]
            horse[i]+=1
            diccionario[carrera[1][i]]=horse
    return diccionario
