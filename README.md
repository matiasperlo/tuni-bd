# Explicacion del DER

### Precio artículo

- Esta tabla recibirá el cálculo de cada artículo, para cada combinación de texturas y proveedores disponibles según lo determinen sus piezas y componentes, por cada artículo. Este cálculo es automático y se realiza **cada ves que hay un cambio nuevo** lo que produce una **actualizacion masiva en cascada** de los precios. Esto incluye:
    - cambio en el **precio de un componente**. Esto es, dependiendo de su proveedor o su textura.
    - cambio en el **costo de minutos de hs hombre**.
    - cambio en el **costo de minutos de hs maquina**.
    - una actualización en la **cantidad de minutos en hs maquina, hombre o ambos**, relacionados a un artículo.
    - una actualización de asociación de una pieza con otro componente deriva en un nuevo cálculo.
    - cualquier **actualización de las medidas de una pieza** de un artículo requerirá un cálculo de costo nuevo.
    - Si queremos hacer una actualización en la cantidad de ganancia se hará el proceso manual de volver a calcular un precio nuevo.

### Componentes

- Componentes tiene relacion con una textura opcional. Un componente con una textura distinta es necesariamente un componente diferente. Para poder agilizar la carga de componentes nuevos en este caso, podriamos cargar componentes en base a uno existente.

