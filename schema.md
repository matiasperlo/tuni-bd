# Explicacion del DER

## Tablas

### Artículo

- **foto_principal** corresponde a una foto principal que se va a asociar al artículo en el momento de la carga. Es solo una.

### Diseños-Artículo

- solo se asocia **foto_disenio** por diseño del artículo, como máximo


### Tablas de Precios

- poseen una **fecha_alta** que nos ayuda a llevar el registro del historial de precios **( algo que el cliente quiere )**. Por este mismo motivo que conformaría parte del conjunto mínimo necesario para la identificación unívoca de un registro de precios (clave primaria), ya que de esa forma de identifican todos los registros hechos en el tiempo como únicos y diferentes entre sí.

### PrecioComponenteComun

- se refiere a todos aquellos componentes que se trabajan en unidades, dejando del otro lado a los de madera, que son modificados usando la maquinaria.

### PrecioComponenteMadera

- se refiere específicamente a los componentes que se asocian a una textura en su precio, es decir todos aquellas en base de madera, principalmente fibropaneles MDF.

### Precio hs hombre-maquina

- En este caso particular de historial de precios no es necesario que la fecha forme parte del identificador de la tabla porque son tablas dedicadas exclusivamente a un solo precio que se va actualizando. Basta con asignarles un id autoincremental.
- En cuanto a la unidad de tiempo, es necesario almacenarlo en **costo por minutos** para facilitar el cálculo de acuerdo a los tiempos ingresados por artículo.

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

### Texturas-Componentes

- El cliente desea cargar la relación de texturas con el componente **cuando realiza la carga del componente, no quiere esperar a tener que asociar el componente a un precio**, además de tener la posibilidad de actualizar las texturas relacionadas más tarde. Es por esto que los componentes y texturas tienen una tabla de relación **muchos-muchos**, adicionalmente a la relación que se identifica en la tabla PrecioComponenteMadera

### Pieza Artículo

- Tendrá asociado un **id_textura** e **id_proveedor** para determinar de manera predeterminada al componente que utiliza, lo que facilitaría el cálculo.

### Tablas de medidas
