'''Pseudocodigo para el calculo del precio de un artículo'''


class CostoHsHombre:
    def obtenerCosto():
        return 1000

class CostoHsMaquina:
    def obtenerCosto():
        return 700

class Intereses:

    def __init__(self) -> None:
        self.interesMinorista = 0.2
        self.interesPorEnvio = 3000

    def aplicarIntereses(self, precio, esMinorista=True, hayEnvio=False):
        
        if esMinorista:
            precio += precio * self.interesMinorista
        if hayEnvio:
            precio += self.interesPorEnvio

        return precio

class Impuestos:

    def aplicarImpuestos(precio):
        precio += precio * 0.21 # IVA (esto no se hardcodea, debe registrarse en BD)
        return precio

class Descuentos:

    def __init__(self) -> None:
        self.descuentoMayorista = 0.15
    
    def aplicarDescuentos(self, precio, esMayorista=False):
        if esMayorista:
            precio -= precio * self.descuentoMayorista

class OfertaArticulo:
    def __init__(self, descuento, descripcion="Promocion") -> None:
        self.descuento = descuento
        self.descripcion = descripcion
    
    def aplicarOferta(self, precio):
        
        precio -= precio * self.descuento
        return precio

class Medidas:
    def __init__(self, alto=2750., ancho=1830., espesor=15.) -> None:
        self.alto = alto
        self.ancho = ancho
        self.espesor = espesor

class PrecioComponente:
    def __init__(self, proveedor, textura, precio) -> None:
        self.proveedor = proveedor
        # self.textura = textura
        self.precio = precio
    
    def esDeProveedor(self, proveedor):
        return self.proveedor == proveedor
    
    def esDeTextura(self, textura):
        return self.textura == textura


class Componente:
    def __init__(self, nombre, precios=None, medidas=None, ) -> None:
        self.nombre = nombre
        
        # registro de las medidas
        self.medidas = medidas

        # registro de precios proveedor-textura
        self.precios = precios

    def obtenerCostoM2(self, proveedor, textura):

        if self.precios == None:
            return 0

        # busca el proveedor y texturas asociados para obtener su precio
        precio = 0

        for precio in self.precios:
            if precio.esDeProveedor(proveedor) and precio.esDeTextura(textura):
                precio = precio.precio
                break

        if precio == 0:
            return precio

        costoM2 = precio / ((self.medidas.alto / 1000.) * (self.medidas.ancho / 1000.))
        return costoM2
    
    def obtenerCosto(self):
        return self.costo

    def setPrecios(self, precios):
        self.precios = precios

class PiezaArticulo:
    def __init__(self, nombre, cantidad, componente) -> None:
        self.nombre = nombre
        self.cantidad = cantidad
        self.componente = componente

        # medidas vacias
        self.medidas = None

    def obtenerPrecio(self):
        precio = 0

        if self.tieneMedidas():
            precio = self.cantidad * self.obtenerM2() * self.componente.obtenerCostoM2()
        else:
            precio = self.cantidad * self.componente.obtenerCosto()

        return precio

    def tieneMedidas(self):
        return self.medidas != None

    def obtenerM2(self):
        m2 = (self.medidas.alto / 1000.) * (self.medidas.ancho / 1000.)
        return m2

    def setMedidas(self, medidas):
        self.medidas = medidas


class Articulo:
    def __init__(self, nombre, oferta=None) -> None:
        self.nombre = nombre

        # horas trabajo
        self.minutos_hs_hombre = 120
        self.minutos_hs_maquina = 60

        # piezas
        self.piezas = []

        # oferta en el artículo
        self.oferta = oferta

    def obtenerPrecio(self):
        
        precio = 0

        # costo horas trabajo
        precio += (self.minutos_hs_hombre  / 60) * CostoHsHombre.obtenerCosto()
        precio += (self.minutos_hs_maquina / 60) * CostoHsMaquina.obtenerCosto()

        for pieza in piezas:
            precio += pieza.obtenerPrecio()

        # TODO: existe mas de un precio posible, hay que comunicar todas las variantes


        # TODO: ZONA DE RUIDO
        # -------------------------------------------------------------------------------
        # aplicar los intereses generales a todos los artículos
        precio = Intereses.aplicarIntereses(precio)

        # aplicar oferta particular en el artículo si existe
        if self.oferta != None:
            precio = self.oferta.aplicarOferta(precio)

        # aplicar los descuentos generales a todos los artículos
        precio = Descuentos.aplicarDescuentos(precio)

        # aplicar impuestos generales a todos los artículos
        precio = Impuestos.aplicarImpuestos(precio)
        # -------------------------------------------------------------------------------

        return precio

    def setPiezas(self, piezas):
        self.piezas = piezas
    
    def setOferta(self, oferta):
        self.oferta = oferta


art1 = Articulo("Panel Decorativo")

med1 = Medidas()
comp1 = Componente("Placa MDF", 15940., med1)
comp2 = Componente("Regaton", 70.)

pieza1 = PiezaArticulo("Panel", 1, comp1)

med2 = Medidas(850.)
pieza1.setMedidas(med2)

pieza2 = PiezaArticulo("Pata", 2, comp1)

med3 = Medidas(250.,250.)
pieza2.setMedidas(med3)

pieza3 = PiezaArticulo("Regaton", 4, comp2)

piezas = []
piezas.append(pieza1)
piezas.append(pieza2)
piezas.append(pieza3)

art1.setPiezas(piezas)

print("Artículo:", art1.nombre, " precio:", art1.obtenerPrecio())
