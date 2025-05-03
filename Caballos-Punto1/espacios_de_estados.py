from movimiento import movimientos


def preorden_soy_unico(nodo, actual_state=None, padre=None):
    """
    Realiza un recorrido en preorden del árbol (raíz → hijos de izquierda a derecha).
    """ 

    if (actual_state["N1"] == nodo.state["N1"] and 
        actual_state["N2"] == nodo.state["N2"] and
        actual_state["B1"] == nodo.state["B1"] and 
        actual_state["B2"] == nodo.state["B2"] 
    ):
        padre.conexiones_grafo.append(nodo)
        return False
    
    for hijo in nodo.hijos:
        if not preorden_soy_unico(hijo, actual_state, padre):
            return False
    
    return True



class Nodo:
    """ Estructura state
    {
        N1: (X,Y),
        N2: (X,Y),
        R1: (X,Y),
        R2: (X,Y),
    }
    """
    def __init__(self, raiz, state, profundidad_maxima=10, profundidad_actual=0, padre=None):
        if raiz == None:
            self.raiz = self
        else:
            self.raiz = raiz

        self.state = state  
        self.padre = padre  
        self.hijos = []  
        self.conexiones_grafo = []
        self.profundidad_maxima = profundidad_maxima
        self.profundidad_actual = profundidad_actual

        self.id = "".join(f"{x}{y}" for x, y in state.values())

        # Generar movimientos automáticamente si no se ha alcanzado la profundidad máxima
        # if self.profundidad_actual < self.profundidad_maxima:
        #     self.agregar_movimientos()

    def agregar_hijo(self, hijo):
        # hijo.padre = self  
        hijo.profundidad_actual = self.profundidad_actual + 1
        hijo.profundidad_maxima = self.profundidad_maxima
        self.hijos.append(hijo)
        self.conexiones_grafo.append(hijo)

    def agregar_movimientos(self):
        """Agrega los movimientos posibles como hijos del nodo actual."""
        flag_tuvo_hijos = False
        for estado_hijo in movimientos(self.state):
            
            if preorden_soy_unico(self.raiz, actual_state=estado_hijo, padre=self):
                hijo = Nodo(self.raiz, estado_hijo, self.profundidad_maxima, self.profundidad_actual + 1, self)
                self.agregar_hijo(hijo)
                flag_tuvo_hijos = True

        return flag_tuvo_hijos

            
            

    def eliminar_hijo(self, hijo):
        if hijo in self.hijos:
            self.hijos.remove(hijo)
            hijo.padre = None  

    def es_raiz(self):
        return self.padre is None

    def es_hoja(self):
        return len(self.hijos) == 0

    def __repr__(self):
        return f"Nodo({self.state})"


def imprimir_arbol(nodo, nivel=0):
    """Imprime la estructura del árbol con indentación."""
    print(" " * nivel*0 + f"Codigo: {nodo.id} codigos_hijos:" + f"{[nodito.id for nodito in nodo.conexiones_grafo]}")
  # Usa indentación para mostrar la jerarquía
    for hijo in nodo.hijos:
        imprimir_arbol(hijo, nivel + 1)

def imprimir_camino_izquierdo(nodo, nivel=0):
    """Imprime solo el camino izquierdo (primer hijo de cada nodo)."""
    print(" " * (nivel * 4) + f"└── {nodo.state}")
    if nodo.hijos:  # Si tiene hijos, imprime solo el primero (el de la izquierda)
        imprimir_camino_izquierdo(nodo.hijos[0], nivel + 1)


# Ejemplo de uso (ahora se generará el árbol automáticamente hasta la profundidad máxima)
raiz = Nodo(raiz=None, state={
    "N1": (0,0),
    "N2": (2,0),
    "B1": (0,2),
    "B2": (2,2),
}, profundidad_maxima=1000)  # Puedes ajustar la profundidad máxima según necesites

raiz.agregar_movimientos()


# Imprimir estructura del árbol
lista_tienen_hijos = []
lista_tienen_hijos.append(raiz)


for nodo in lista_tienen_hijos:
  for hijo in nodo.hijos:
    if hijo.profundidad_actual < hijo.profundidad_maxima:
        if hijo.agregar_movimientos():
            lista_tienen_hijos.append(hijo)

imprimir_arbol(raiz)