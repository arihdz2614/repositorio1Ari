import random 
cartas = [
    ("As oros",1),
    ("2 oros",2),
    ("3 oros",3),
    ("4 oros",4),
    ("5 oros",5),
    ("6 oros",6),
    ("7 oros",7),
    ("10 oros",0.5),
    ("11 oros",0.5),
    ("12 oros",0.5),
    ("As copas",1),
    ("2 copas",2),
    ("3 copas",3),
    ("4 copas",4),
    ("5 copas",5),
    ("6 copas",6),
    ("7 copas",7),
    ("10 copas",0.5),
    ("11 copas",0.5),
    ("12 copas",0.5),
    ("As espadas",1),
    ("2 espadas",2),
    ("3 espadas",3),
    ("4 espadas",4),
    ("5 espadas",5),
    ("6 espadas",6),
    ("7 espadas",7),
    ("10 espadas",0.5),
    ("11 espadas",0.5),
    ("12 espadas",0.5),
    ("As bastos",1),
    ("2 bastos",2),
    ("3 bastos",3),
    ("4 bastos",4),
    ("5 bastos",5),
    ("6 bastos",6),
    ("7 bastos",7),
    ("10 bastos",0.5),
    ("11 bastos",0.5),
    ("12 bastos",0.5)
]
#Guardar cartas random
cartas_barajeadas =[]
#barajear
while(not cartas ==[]): #mientras no esten vacia
    cartas_barajeadas.append(cartas.pop(random.randint(0,len(cartas)-1)))
#cartas barajeadas
print(cartas_barajeadas)    

puntos_j1 = 0
puntos_j2 = 0

gana_puntos = 7.5

pierde = puntos_j1 > 7.5
pierde2 = puntos_j2 > 7.5


jugador1Ganador = gana_puntos or puntos_j1 > puntos_j2
jugador2Ganador = puntos_j2 > puntos_j2


    