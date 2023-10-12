# Explicacion del DER

### Precio artículo

- Esta tabla recibirá el cálculo de cada artículo, para cada combinación de texturas y proveedores disponibles según lo determinen sus piezas y componentes, por cada artículo. Este cálculo es automático y se realiza **cada ves que hay un cambio nuevo** lo que produce una **actualizacion masiva en cascada** de los precios. Esto incluye:
    - cambio en el **precio de un componente a base de madera**. Esto es, dependiendo de su proveedor o su textura.
    - cambio en el **precio de un componente común**. Esto es, la actualización de su precio.
    - cambio en el precio por el cambio de **asociación de textura a la pieza** de un artículo
    - cambio en el **costo de minutos de hs hombre**.
    - cambio en el **costo de minutos de hs maquina**.
    - una actualización en la **cantidad de minutos en hs maquina, hombre o ambos**, relacionados a un artículo.
    - una actualización de asociación de una pieza con otro componente deriva en un nuevo cálculo.
    - cualquier **actualización de las medidas de una pieza** de un artículo requerirá un cálculo de costo nuevo.
    - cambio en el monto de **cualquier interés** que aplica a cada artículo tanto en general como en particular, como el valor agregado o el aumento por costo de envío.
    - cambio en el monto de **cualquier descuento** que aplica a cada artículo tanto en general como en particular, como el descuento al mayorista u ofertas temporales de un artículo particular.
    - cambio en el monto de **cualquier impuesto** que aplica a cada artículo tanto en general como en particular, como el IVA.

### Componentes

- Componentes tiene relacion con una textura opcional. Un componente con una textura distinta es necesariamente un componente diferente. Para poder agilizar la carga de componentes nuevos en este caso, podriamos cargar componentes en base a uno existente.

