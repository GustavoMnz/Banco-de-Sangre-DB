# **CAPÍTULO I**
## **Descripción del Proyecto**

El Banco de Sangre Central de la ciudad de Corrientes presta sus servicios a los habitantes de dicha ciudad para lograr la concientización sobre la donación voluntaria y mantener el abastecimiento continuo de hemoderivados y que permite asistir a los profesionales médicos en las solicitudes transfusionales de este insustituible recurso terapéutico. Esto hace que generan a diario un gran flujo de  volumen de información, por lo que han detectado la necesidad de desarrollar e implementar una informatización, lo que  permitirá certificar que el donante cumpla con los requisitos adecuados para que así el personal mantenga y mejore su desempeño de manera más eficaz y eficiente, además de agilizar el proceso de toma de decisiones y llevar un control de todo el reporte que se genera en una donación de sangre.

## **Alcance del Proyecto**
- La base de datos debe permitir automatizar la recepción de los datos del donante para agilizar el proceso.
- Garantizar seguridad en la información que se maneja y se proporciona.
- Poder cumplir con las necesidades diarias del personal que lo manipula.
- Credibilidad en la calidad de la información administrada.
- Asistir más pacientes y donantes en el día para ser reconocidos por nuestro servicio.
#
# **CAPÍTULO II**
FUNCIONES:

Es un conjunto de instrucciones SQL que realizan una tarea específica de manera automática. Las funciones permiten la reutilización del código. Si se tiene que escribir repetidamente grandes scripts SQL para realizar la misma tarea, se puede crear una función que realice esa tarea. Llamando a la función se evita la repetición de código. Una función acepta entradas en forma de parámetros y devuelve un valor, los parámetros de entrada pueden ser de cualquier tipo, excepto timestamp, cursor y table.

Las funciones definidas por el usuario no permiten parámetros de salida.

Tipos de Funciones:

Funciones escalares: devuelven un único valor de datos del tipo definido en la cláusula *RETURNS*.

Funciones con valores de tabla (TVF) : devuelven un tipo de datos **de tabla** .

Funciones del sistema: Proporcionadas por SQL Server, se pueden usar para realizar varias operaciones.No se pueden modificar.

Las funciones definidas por el usuario se crean con la instrucción ***create function*** y se eliminan con ***drop function***. Las funciones que retornan una tabla pueden emplearse en lugar de un "from" de una consulta. 

PROCEDIMIENTOS ALMACENADOS (Stored Procedures)**:**

Un procedimiento almacenado es un conjunto de instrucciones *Transact-Sql* a las que se les asigna un nombre , y se almacena dentro del servidor. Permiten encapsular tareas que sean repetitivas.

Realizan operaciones en la base de datos y contienen llamadas a otros procedimientos

Aceptan parámetros de entrada y devuelven varios valores en forma de parámetros de salida al programa que realiza la llamada.

Al crear un procedimiento almacenado, las instrucciones que contiene se analizan para verificar si son correctas sintácticamente. Si no se detectan errores, SQL Server guarda el nombre del procedimiento almacenado en la tabla del sistema "sysobjects" y su contenido en la tabla del sistema "syscomments" en la base de datos activa. Si se encuentra algún error, no se crea.

**Ventajas**                                          	

- Permiten que los usuarios realicen todas las operaciones que necesitan sin que tengan acceso directo a las tablas
- Mayor seguridad: el procedimiento controla los procedimientos y actividades que se realizan , protege los objetos de bases subyacentes.
- Reutilización del código: si el código es redundante en cualquier operación de base de datos se realiza la encapsulación de procedimientos.
- Reducen el tráfico de red: en vez de enviar muchas instrucciones, los usuarios realizan operaciones enviando una única instrucción, lo cual disminuye el número de solicitudes entre el cliente y el servidor

**Diferencia entre funciones**

- Una diferencia es que las funciones siempre retornan un valor, mientras que un procedimiento almacenado puede que retorne un valor o puede que no lo haga.
- Otra diferencia es que los procedimientos almacenados pueden ser invocados desde el entorno de desarrollo.

DISPARADORES (Triggers):

Un trigger(disparador) es un tipo de procedimiento almacenado, consiste en una serie de reglas predefinidas que están asociadas a una tabla, y son aplicadas en la realización de determinadas operaciones. Si se intenta modificar (*agregar, actualizar o eliminar*) datos de una tabla en la que se definió un disparador para alguna de estas acciones (inserción, actualización y eliminación), el disparador se ejecuta (se dispara) en forma automática.

Aumentan la seguridad y integridad de la información, gracias a la programación de restricciones de verificación que permite minimizar errores y sincronizar información

La diferencia con los procedimientos almacenados del sistema es que los triggers no reciben y retornan parámetros.

Tampoco pueden ser invocados directamente; al intentar modificar los datos de una tabla para la que se ha definido un disparador, el disparador se ejecuta automáticamente. 

TRANSACCIONES:

Las transacciones son un conjunto de operaciones Transact y al estar ejecutadas como un solo bloque, si falla una fallan todas. Así mismo si una transacción tiene éxito, las modificaciones se confirman y se realiza un cambio permanente de la base de datos. Si una transacción encuentra errores y debe cancelarse o revertirse, se borraran todas las modificaciones de los datos.

La sentencia que se utiliza para indicar el comienzo de una transacción es ‘*BEGIN TRAN’*. Si todas las operaciones de una transacción se completan con éxito hay que marcar el fin de una transacción para que la base de datos vuelva a estar en un estado consistente con la sentencia *‘COMMIT TRAN*’.

Existen tres comandos básicos de control en las **transacciones SQL**:

- **COMMIT**. Para **guardar los cambios**.
- **ROLLBACK**. Para **abandonar la transacción y deshacer los cambios** que se hubieran hecho en la transacción.
- **SAVEPOINT**. Crea **checkpoints**, puntos concretos en la transacción donde poder deshacer la transacción hasta esos puntos.

La variable @ERROR en SQL Server devuelve 0 si la operación fue correcta o en caso contrario devolverá un valor distinto de 0 en el caso de que haya aparecido algún error.

VISTAS:

Una vista es como una tabla virtual cuyo contenido está definido por una consulta , consta de un conjunto de columnas y filas de datos con un nombre. Los datos accesibles a través de la vista no están almacenados en la base de datos como un objeto. Entonces, una vista almacena una consulta como un objeto para utilizarse posteriormente, actúa como filtro de las tablas subyacentes a las que se hace referencia en ella.

Las vistas mejoran el rendimiento y simplifica la administración de los permisos de usuario.

PERMISOS:

Los permisos de motor de base de datos se administran mediante inicios de sesión y roles de servidor que proporcionan un grupo práctico de permisos.
#### Inicios de sesión (logins)
Los inicios de sesión son cuentas de usuario individuales para iniciar sesión en Motor de base de datos de SQL Server pueden ser basados en la autenticación de Windows o basados en la autenticación de SQL Server.

Roles

Existen dos tipos de roles: los roles fijos de base de datos que están predefinidos en la base de datos y los roles de base de datos definidos por el usuario que el usuario puede crear. Los permisos de los roles de base de datos definidos por el usuario se pueden personalizar con las instrucciones GRANT, DENY y REVOKE.


#
# **CAPÍTULO III**
Para la realización del trabajo se optó por utilizar herramientas colaborativas como el procesador de textos online Google Docs. para la elaboración del presente documento, un sistema de control de versionado como Github como repositorio de los archivos que contienen los scripts para la elaboración de la base de datos y los temas propuestos.

Además utilizamos SQL Server en su versión 2019 como sistema gestor de base de datos. 

#
# **CAPÍTULO IV**
# **Diagrama del Modelo de datos![](Aspose.Words.5b8122ae-9f6d-426f-9ba9-6618ce5fdc05.001.png)**
#
![Aspose Words 5b8122ae-9f6d-426f-9ba9-6618ce5fdc05 001](https://user-images.githubusercontent.com/59345599/201791768-350bbad8-07c9-4a99-b69c-3474b996289c.png)

## **Entidades:**

|Nombre|Descripción|
| :- | :- |
|Donante|Almacena los datos del donante.|
|Bolsa|Almacena información sobre la unidad de sangre extraída.|
|Pruebas\_donante|Almacena el resultado de los análisis de sangre ante ciertas enfermedades.|
|Bioanalista|Almacena los datos del/la encargado/a de realizar el análisis de sangre.|
|Paciente|Almacena los datos del receptor de la transfusión.|
|sexo|Almacena información referente al tipo de sexo.|
|Tipo\_sangre|Almacena información del grupo y factor sanguíneo .|
|Solicitud\_transfusion|Contiene información acerca de la solicitud de transfusión.|
|Transfusion|Contiene información acerca del proceso de transfusión sanguínea.|
|tipo\_hemocomponente|Tipo de componente obtenido a partir de la separación de la unidad de sangre.|
|estado|Estado en el que se encuentra la prueba sobre la bolsa, y además la solicitud de transfusión|

**Atributos:**

Donante:

|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|i*d\_donante*|int|4|Número autoincremental identificatorio del donante.|
|dni|char|8|Número de Documento del donante.|
|nombre|varchar|20|Nombre completo del donante.|
|apellido|varchar|20|Apellido completo del donante.|
|fecha\_nacimiento|date|3|Fecha de nacimiento del donante.|
|telefono|varchar|20|Número de teléfono del donante.|
|direccion|varchar|40|Dirección del domicilio del donante |

Bolsa:

|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|*id\_bolsa*|int|4|Número identificatorio de la unidad de sangre extraída.|
|fecha\_extraccion|smalldatetime|4|Fecha y hora en la que se realizó la extracción|
|cantidad|numeric|5|Cantidad de sangre extraída expresada en mililitros.|
|fecha\_vencimiento|smalldatetime|4|Fecha y hora de vencimiento de la unidad.|

Pruebas\_donante:


|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|*id\_prueba*|int|4|Número identificatorio de la prueba realizada.|
|fecha|smalldatetime|4|Fecha y hora en la que se realizó la prueba.|
|hcv|bit|1|Resultado en la prueba de detección  de hcv.|
|hiv|bit|1|Resultado en la prueba de detección  de hiv.|
|sifilis|bit|1|Resultado en la prueba de detección  de sífilis.|
|ahbc|bit|1|Resultado en la prueba de detección  de ahbc.|
|htlv|bit|1|Resultado en la prueba de detección  de htlv.|
|chagas|bit|1|Resultado en la prueba de detección  de chagas.|
|hbsag|bit|1|Resultado en la prueba de detección  de hbsag.|
|t\_prueba|bit|1|Resultado de prueba inmunohematológica|

Bioanalista:

|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|i*d\_bioanalista*|int|4|Número autoincremental identificatorio del bioanalista.|
|dni|char|8|Número de Documento del bioanalista.|
|nombre|varchar|20|Nombre completo del bioanalista.|
|apellido|varchar|20|Apellido completo del bioanalista.|
|fecha\_nacimiento|date|3|Fecha de nacimiento del bioanalista.|
|telefono|varchar|20|Número de teléfono del bioanalista.|
|direccion|varchar|40|Dirección del domicilio del bioanalista|

Paciente:

|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|*dni*|char|8|Número de Documento del paciente.|
|nombre|varchar|20|Nombre completo del paciente.|
|apellido|varchar|20|Apellido completo del paciente.|
|fecha\_nacimiento|date|3|Fecha de nacimiento del paciente.|
|telefono|varchar|20|Número de teléfono del paciente.|
|direccion|varchar|40|Dirección del domicilio del paciente.|

Sexo:


|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|*id\_sexo*|int|4|Número identificatorio del tipo de sexo.|
|descripcion|char|1|[F , M]|

Tipo\_sangre:


|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|*tipo\_sangre\_id*|int|1|Número identificatorio del tipo de sangre.|
|grupo\_sanguineo|char|2|[ A , B , AB , O ]|
|factor\_rh|char|1|[ + , - ]|


Solicitud\_transfusion:


|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|*id\_solicitud\_transfusion*|int|4|Número autoincremental identificatorio de la solicitud.|
|fecha|smalldatetime|4|Fecha y hora en la que se realiza la solicitud de transfusión.|
|motivo|varchar|40|Motivo de la transfusión|
|cantidad|numeric|5|Cantidad en mililitros del hemocomponente solicitado.|
|estado|varchar|25|[aceptado,rechazado,pendiente]|

Transfusion:


|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|*id\_transfusion*|int|4|Número autoincremental identificatorio de la transfusión.|
|fecha\_transfusion|smalldatetime|4|Fecha y hora en la que se realizó la transfusión.|
|muestra\_reaccion|varchar|40|Descripción de reacción.|
|modificacion|varchar|20|Informe sobre si fue irradiado, lavado,filtrado, etc.|

Tipo\_hemocomponente:

|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|*id\_hemocomponente*|int|4|Número identificatorio del hemocomponente.|
|descripcion|varchar|15|[Glóbulos rojos , plaquetas , plasma]|

Estado:

|Campo|Tipo|Longitud|Descripción|
| :- | :- | :- | :- |
|*id\_estado*|int|1|Número identificatorio del estado.|
|descripcion|varchar|25|[Pendiente , Aceptado , Rechazado]|
#
Relaciones:

**Tabla:** bioanalista

**Nombre de la relación:** FK\_bioanalista\_sexo

**Columna de relación**: id\_sexo

**Entidad Relacionada**: sexo

**Tabla:** bolsa

**Nombre de la relación:** FK\_bolsa\_donante

**Columna de relación**: id\_donante

**Entidad Relacionada**: donante



**Tabla:** bolsa

**Nombre de la relación:** FK\_bolsa\_tipo\_hemocomponente

**Columna de relación**: id\_hemocomponente

**Entidad Relacionada**: tipo\_hemocomponente



**Tabla:** bolsa

**Nombre de la relación:** FK\_bolsa\_estado

**Columna de relación**: id\_estado

**Entidad Relacionada**: estado



**Tabla:** donante

**Nombre de la relación:** FK\_donante\_sexo

**Columna de relación**: id\_sexo

**Entidad Relacionada**: sexo



**Tabla:** donante

**Nombre de la relación:** FK\_doante\_tipo\_sangre

**Columna de relación**: tipo\_sangre\_id

**Entidad Relacionada**:tipo\_sangre



**Tabla:** paciente

**Nombre de la relación:** FK\_paciente\_sexo

**Columna de relación**: id\_sexo

**Entidad Relacionada**: sexo

**Tabla:** paciente

**Nombre de la relación:** FK\_paciente\_tipo\_sangre

**Columna de relación**: tipo\_sangre\_id

**Entidad Relacionada**:tipo\_sangre

**Tabla:** pruebas\_donante

**Nombre de la relación:** FK\_\_pruebas\_donante\_\_bolsa

**Columna de relación**: id\_bolsa

**Entidad Relacionada**:bolsa



**Tabla:** pruebas\_donante

**Nombre de la relación:** FK\_\_pruebas\_donante\_bionalista

**Columna de relación**: id\_bioanalista

**Entidad Relacionada**:bioanalista
**


**Tabla:** solicitud\_transfusion

**Nombre de la relación:** FK\_solicitud\_transfusion\_paciente

**Columna de relación**: paciente\_dni

**Entidad Relacionada**:paciente



**Tabla:** solicitud\_transfusion

**Nombre de la relación:** FK\_solicitud\_transfusion\_tipo\_hemocomponente

**Columna de relación**: id\_hemocomponente

**Entidad Relacionada**:tipo\_hemocomponente



**Tabla:** solicitud\_transfusion

**Nombre de la relación:** FK\_solicitud\_transfusion\_estado

**Columna de relación**: id\_estado

**Entidad Relacionada**:estado



**Tabla:** transfusion

**Nombre de la relación:** FK\_transfusion\_solicitud\_transfusion

**Columna de relación**: id\_solicitud\_transfusion

**Entidad Relacionada**:solicitud\_transfusion

**Tabla:** transfusion

**Nombre de la relación:** FK\_transfusion\_bolsa

**Columna de relación**: id\_bolsa

**Entidad Relacionada**:bolsa

Restricciones:


|Entidad|Nombre de restricción|Tipo|Detalle|
| :-: | :-: | :-: | :-: |
|donante|UQ\_\_donante\_dni|unique|unique (dni)|
|bioanalista|UQ\_\_bioanalista\_dni|unique|unique (dni)|
|bioanalista|CK\_bioanlista\_fecha\_nacimiento|check|fecha\_nacimiento <= getdate()|
|paciente|UQ\_\_paciente\_dni|unique|unique (dni)|
|paciente|CK\_paciente\_fecha\_nacimiento|check|fecha\_nacimiento <= getdate()|
|pruebas\_donante|UQ\_\_pruebas\_donante\_bolsa|unique|unique (id\_bolsa)|
|pruebas\_donante|DF\_pruebas\_donante\_fecha|default|current\_timestamp for fecha|
|sexo|CK\_sexo\_descripción|check|descripcion in ('F','M')|
|solicitud\_transfusion|DF\_\_solicitud\_transfusion\_fecha|default|current\_timestamp for fecha|
|solicitud\_transfusion|DF\_\_solicitud\_transfusion\_estado|default|1 for id\_estado|
|transfusion|CK\_fecha\_tf|check|fecha\_recepcion <= getdate()|
|tipo\_sangre|CK\_tipo\_sangre\_grupo\_sanguineo|check|grupo\_sanguineo in ('A','B','AB','O')|
|tipo\_sangre|CK\_tipo\_sangre\_factor\_rh|check|factor\_rh in ('+','-')|
|bolsa|CK\_\_bolsa\_cantidad|check|cantidad >= 50 and cantidad<= 300|
|bolsa|DF\_\_bolsa\_\_fecha\_extraccion|default|current\_timestamp for fecha\_extraccion|
|bolsa|DF\_\_bolsa\_\_fecha\_vencimiento|default|null for fecha\_vencimiento|
|bolsa|DF\_\_bolsa\_estado|default|1 for id\_estado|

**Índices:**

Nombre Entidad:  tipo\_hemocomponente

Nombre indice: PK\_\_tipo\_hem\_\_F8950789C439DC97

Descripción: clustered, unique, primary key located on PRIMARY

Campo Clave: id\_hemocomponente



Nombre Entidad:  tipo\_hemocomponente

Nombre indice: PK\_\_tipo\_hem\_\_F8950789C439DC97

Descripción: clustered, unique, primary key located on PRIMARY

Campo Clave: id\_hemocomponente



Nombre Entidad: donante

Nombre indice: PK\_\_donante\_\_1AD3F2ABD70A5A2D     	

Descripción: clustered, unique, primary key located on PRIMARY 

Campo Clave: id\_donante



Nombre Entidad: donante

Nombre indice: UQ\_\_donante\_\_D87608A7BC51CA02     	

Descripción:nonclustered, unique, unique key located on PRIMARY      	

Campo Clave: dni



Nombre Entidad: donante

Nombre indice: UQ\_\_donante\_dni     	

Descripción:nonclustered, unique, unique key located on PRIMARY      	

Campo Clave: dni



Nombre Entidad: Paciente

Nombre indice:UQ\_\_paciente\_\_D87608A70DBE25D5

Descripción: nonclustered, unique, unique key located on PRIMARY    	

Campo Clave: dni



Nombre Entidad: Paciente

Nombre indice:UQ\_\_paciente\_dni      	

Descripción: nonclustered, unique, unique key located on PRIMARY     	

Campo Clave: dni



Nombre Entidad: Bioanalista

Nombre indice:PK\_\_bioanali\_\_04BC20158BC86EB0

Descripción: clustered, unique, primary key located on PRIMARY 

Campo Clave: id\_bioanalista



Nombre Entidad: Bioanalista

Nombre indice:UQ\_\_bioanali\_\_D87608A7D64DF8A1

Descripción: nonclustered, unique, unique key located on PRIMARY    	

Campo Clave: dni



Nombre Entidad: Bioanalista

Nombre indice:UQ\_\_bioanalista\_dni  	

Descripción: nonclustered, unique, unique key located on PRIMARY     	

Campo Clave: dni



Nombre Entidad: Bolsa

Nombre indice:PK\_\_bolsa\_\_8218C5B6405D6111  	

Descripción: clustered, unique, primary key located on PRIMARY 

Campo Clave: id\_bolsa



Nombre Entidad: prueba\_donante

Nombre indice:PK\_\_pruebas\_\_\_328A4573756CD13E      	

Descripción: clustered, unique, primary key located on PRIMARY 

Campo Clave: id\_prueba



Nombre Entidad:prueba\_donante

Nombre indice:UQ\_\_pruebas\_donante\_bolsa

Descripción: nonclustered, unique, unique key located on PRIMARY     	

Campo Clave: id\_bolsa



Nombre Entidad: sexo

Nombre indice:PK\_\_sexo\_\_D692FEE67D5148AC 	

Descripción: clustered, unique, primary key located on PRIMARY 

Campo Clave: id\_sexo



Nombre Entidad: tipo\_sangre

Nombre indice:PK\_\_tipo\_san\_\_1C25CF6F36E3B0BC      	

Descripción: clustered, unique, primary key located on PRIMARY 

Campo Clave: tipo\_sangre\_id



Nombre Entidad: transfusion

Nombre indice:PK\_\_transfus\_\_5372DA190B79AC81

Descripción: clustered, unique, primary key located on PRIMARY 

Campo Clave: id\_transfusion



Nombre Entidad: solicitud\_transfusion

Nombre indice:PK\_ solicitu \_\_D0C3B5EB2178C648

Descripción: clustered, unique, primary key located on PRIMARY 

Campo Clave: id\_solicitud transfusión



Nombre Entidad: estado

Nombre indice:PK\_ estado\_\_86989FB2B88109D1  

Descripción: clustered, unique, primary key located on PRIMARY 

Campo Clave: id\_estado




# **CAPÍTULO V**
A lo largo de la elaboración de este proyecto y concluido la investigación, hemos podido adquirir conocimientos sobre las diferentes herramientas , metodologías y conceptos que abarcan la creación de una base de datos.

También hemos comprendido la importancia de la informatización de los datos, ya que al emplear una recopilación organizada de información, se logra disminuir la redundancia, afianzar la seguridad y la posibilidad de mantener la integridad de los datos.

Gracias a la utilización de Microsoft sql server como la principal  herramienta de sistema de gestión, pudimos estudiar y practicar en gran medida el lenguaje Transact-SQL y su conjunto de extensiones de programación propias de lenguaje estándar.

Esta herramienta es una de las más esenciales y utilizadas mundialmente, por lo cual nos da una gran perspectiva y entendimiento de la forma de gestionar datos en la actualidad.

Así mismo cabe aclarar algunas dificultades que pudimos afrontar como grupo debido al tema elegido de la gestión de datos de un banco de sangre, ya que se tuvo que hacer una extensa investigación del funcionamiento administrativo de las donaciones de sangre, así también como los diferentes estudios que se deben tener en cuenta a la hora de donar.

**Trigger**

Para ver el funcionamiento del trigger “TR\_bolsa\_fechCaducidad”  insertamos registros en la tabla bolsa, al insertar los registros estos toman valores por defecto en los campos fecha\_vencimiento (null) y el campo id\_estado (1) que significa que la unidad de sangre está pendiente de la prueba de enfermedades.

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 001](https://user-images.githubusercontent.com/59345599/201813723-9df5a84b-da65-47ae-9f8e-c93d498dd08c.png)


Realizamos la inserción de registro para la tabla “pruebas\_donante” correspondiente a cada unidad de sangre ingresada anteriormente.al realizar esta accion se dispara el trigger, que se encarga de asignar una fecha de vencimiento (dependiendo del tipo de componente contenido en la bolsa) en el caso de que la prueba no se encuentre ningún tipo de virus, caso contrario omite este paso, en cualquiera de los casos además actualiza el valor del estado a 2 (estado aceptado) o 3 (estado rechazado)

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 002](https://user-images.githubusercontent.com/59345599/201813746-5099b2c0-9140-42e4-806e-b9584b65de8a.png)



**Usuario y roles**

Creamos un nuevo rol en nuestra base de datos, le asignamos un nombre y el propietario de dicho rol.
![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 003](https://user-images.githubusercontent.com/59345599/201813808-48b33269-f888-4ca2-8c00-880c6a140b1b.png)
![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 004](https://user-images.githubusercontent.com/59345599/201813822-6be60228-4594-40ef-b54c-bbf9bef8ab67.png)

Seleccionamos los tipos de objetos a los que tendrá acceso este rol

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 005](https://user-images.githubusercontent.com/59345599/201813859-4fa87319-3f3a-4c78-b573-f51c34e04503.png)
Damos acceso a cada uno de los objetos que deseamos.

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 006](https://user-images.githubusercontent.com/59345599/201813894-612d96a4-5f38-4ff4-a340-fee7ae28174a.png)![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 007](https://user-images.githubusercontent.com/59345599/201813910-877df7b5-71cd-4d82-a74c-3cfee66ad636.png)
![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 008](https://user-images.githubusercontent.com/59345599/201813930-fc26e501-afb5-44b2-83a1-2702f55ff134.png)

Creamos un nuevo login que usaremos para el rol creado previamente![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 009](https://user-images.githubusercontent.com/59345599/201814027-b0c63d7c-fea9-43f1-b6a2-4fdc8d48638f.png)

Asignamos nombre y contraseña para el usuario a logear

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 010](https://user-images.githubusercontent.com/59345599/201814061-9147d130-d202-44ce-b888-4f3c5c5c5922.png)

Por último le asignamos el rol que creamos anteriormente

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 011](https://user-images.githubusercontent.com/59345599/201814083-db2e2050-0b63-46a1-9470-5a031c380fa2.png)

Ingresamos con el login creado para probar su funcionamiento

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 012](https://user-images.githubusercontent.com/59345599/201814113-55ede617-9bc3-4108-aacf-ba09e472f722.png)


Intentamos acceder a alguna tabla y nos muestra el siguiente mensaje de error![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 013](https://user-images.githubusercontent.com/59345599/201814151-4ee7c3e0-ab92-4fd7-a9c8-25aa62dbc1dd.png)

Comprobamos si tiene acceso a la vista a la cual le dimos permiso.

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 014](https://user-images.githubusercontent.com/59345599/201814179-62d845e6-7f15-49b0-8136-2fccf58e4bbf.png)

**Transacción**

hacemos un select sobre nuestra tabla principal para ver los valores originales.

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 015](https://user-images.githubusercontent.com/59345599/201814220-118da305-0942-4a35-91ca-739d85a0470e.png)

ejecutamos la siguiente instrucción, donde actualizamos la tabla con un valor no permitido, el campo “fecha\_recepcion” cuenta con una restricción donde la fecha a ingresar debe ser menor o igual a la fecha actual, por lo que ingresamos una fecha no válida para comprobar la transacción

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 016](https://user-images.githubusercontent.com/59345599/201814239-4293c40e-47a5-418e-b6c9-1c6e28add045.png)

Al ejecutar la  instrucción y obtenemos el siguiente error

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 017](https://user-images.githubusercontent.com/59345599/201814265-3b5d55d1-ca11-4652-9ad7-7c1b8c112160.png)

Verificamos la tabla para comprobar que no se modificaron los valores.

![Aspose Words b705b8c3-d996-4d1b-b871-f1b8d36a8cd0 018](https://user-images.githubusercontent.com/59345599/201814293-a66ddaa6-c0e0-4924-b7fd-dceb6ecc6d79.png)

**Backup y restauración**

Para generar la copia de seguridad (Backup) nos posicionamos sobre la base de datos Banco\_de\_sangre , elegimos las opciones tarea>copia de seguridad

![Aspose Words 5b8122ae-9f6d-426f-9ba9-6618ce5fdc05 002](https://user-images.githubusercontent.com/59345599/201792051-87b90dc9-ae10-457e-ae52-c09f80e54d60.png)


Seleccionamos el tipo de copia, si es completa o diferencial, si la copia es diferencial registra solo los cambios de la información de la base de datos realizados después de la última copia de seguridad. Luego especificamos el directorio y el nombre de la copia.

![Aspose Words 5b8122ae-9f6d-426f-9ba9-6618ce5fdc05 003](https://user-images.githubusercontent.com/59345599/201792068-d46e1eda-3399-4029-ada9-80c29ad2e125.png)

Otra forma de crear la copia de seguridad mediante código

![Aspose Words 5b8122ae-9f6d-426f-9ba9-6618ce5fdc05 004](https://user-images.githubusercontent.com/59345599/201792101-729e2a92-5733-4fdd-b5c7-8e505e33552e.png)

![Aspose Words 5b8122ae-9f6d-426f-9ba9-6618ce5fdc05 005](https://user-images.githubusercontent.com/59345599/201792116-4c0d4e47-ea9e-497f-86bb-870a9b3e218e.png)


Para comprobar que se haya realizado el backup correctamente eliminamos la base en su totalidad y procedemos a su restauración.

![Aspose Words 5b8122ae-9f6d-426f-9ba9-6618ce5fdc05 006](https://user-images.githubusercontent.com/59345599/201792156-31c9f051-44fd-4d69-b4de-b8dba66fe5f4.png)
![Aspose Words 5b8122ae-9f6d-426f-9ba9-6618ce5fdc05 007](https://user-images.githubusercontent.com/59345599/201792272-eb99fe01-ddfc-4a2e-9e49-456c91a8b7f6.png)
![Aspose Words 5b8122ae-9f6d-426f-9ba9-6618ce5fdc05 008](https://user-images.githubusercontent.com/59345599/201792293-3719075c-f3d7-49d9-9cc7-3555639a3a73.png)


# **BIBLIOGRAFÍA**
[Funciones definidas por el usuario - SQL Server | Microsoft Learn](https://learn.microsoft.com/es-es/sql/relational-databases/user-defined-functions/user-defined-functions?view=sql-server-ver16)

[Procedimientos almacenados (motor de base de datos) - SQL Server | Microsoft Learn](https://learn.microsoft.com/es-es/sql/relational-databases/stored-procedures/stored-procedures-database-engine?view=sql-server-ver16)

[CREATE TRIGGER (Transact-SQL) - SQL Server | Microsoft Learn](https://learn.microsoft.com/es-es/sql/t-sql/statements/create-trigger-transact-sql?view=sql-server-ver16)

[Transacciones (Transact-SQL) - SQL Server | Microsoft Learn](https://learn.microsoft.com/es-es/sql/t-sql/language-elements/transactions-transact-sql?view=sql-server-ver16)

[Vistas (Transact-SQL) - SQL Server | Microsoft Learn](https://learn.microsoft.com/es-es/sql/relational-databases/views/views?view=sql-server-ver16)

[Introducción a los permisos del motor de base de datos- SQL Server | Microsoft Learn](https://learn.microsoft.com/es-es/sql/relational-databases/security/authentication-access/getting-started-with-database-engine-permissions?view=sql-server-ver16)

[Hemoterapia instrucciones básicas para banco de sangre y transfusión](https://www.scielo.sa.cr/scielo.php?script=sci_arttext&pid=S1017-85461996000100006)

