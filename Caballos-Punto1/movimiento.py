"""{
    "N1": (0,0),
    "N2": (2,0),
    "B1": (0,2),
    "B2": (2,2),
}"""
"""{
    "N1": (0,2),
    "N2": (2,2),
    "B1": (0,0),
    "B2": (2,0),
}"""
"""{
    "N1": (2,2),
    "N2": (0,2),
    "B1": (2,0),
    "B2": (0,0),
}"""

def movimiento_L(x, y):
    movimientos = [(x-1,y-2),(x+1,y-2),(x-2,y-1),(x+2,y-1),(x+2,y+1),(x+1,y+2),(x-1,y+2),(x-2,y+1)]
    movimientos = list(filter(lambda pos: 0<=pos[0]<=2 and 0<=pos[1]<=2 , movimientos))
    # print(movimientos)
    return movimientos


def sobreposicion(state, movimientos):
    movimientos = list(filter(lambda pos: pos not in state.values(), movimientos))    
    return movimientos

# def soy_unico_en_mi_linaje(state, padre):
#     while padre:
#         for ficha in state.keys():
#             if (state["N1"] == padre.state["N1"] and 
#                 state["N2"] == padre.state["N2"] and
#                 state["B1"] == padre.state["B1"] and 
#                 state["B2"] == padre.state["B2"] 
#             ):
#                 return False
        
#         padre = padre.padre

#     return True






def movimientos(state):
    hijos = []
    for ficha in state.keys():
        x,y = state[ficha]
        movimientos = movimiento_L(x,y)
        movimientos = sobreposicion(state, movimientos)


        if len(movimientos) == 0:
            continue
        else:
            for movimiento in movimientos:
                nuevo_estado = state.copy()
                nuevo_estado[ficha] = movimiento    
                hijos.append(nuevo_estado)
    
    return hijos


# print(len(movimientos({
#     "N1": (2,1),
#     "N2": (2,0),
#     "B1": (0,2),
#     "B2": (2,2),
# })))