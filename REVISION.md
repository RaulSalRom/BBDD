# Informe de correcciones y soluciones tecnicas

## 1. Correcciones exigidas por el profesor

### Gestion de atributos y campos derivados
- nombre_completo VARCHAR(200) GENERATED ALWAYS AS (CONCAT(nombre, ' ', apellido)) STORED, -- Opcional, derivado. Creo que se os ha colado algo raro.
- tabla usuario no se almacena el atributo nombreCompleto.

### Errores en la estructura de tablas y relaciones
- Asistencia, la PK no es id asistencia sino idSocio y idClase. En el diagrama esta mal representada.
- Entrenador falta idClase en base a la representacion del diagrama aunque creo que un entrenador impartira mas de una clase.
- Socio falta idMenbresia, lo habeis puesto en membresia el idSocio pero segun el diagrama la FK va de socio a membresia.

### Carencias en el script SQL
- No se incluyen insert, ni alter table, ni delete, ni update.

## 2. Soluciones aplicadas

### Ajustes en tabla Usuario y atributos derivados
Se ha eliminado la columna generada nombre_completo y cualquier referencia al atributo nombreCompleto dentro de la tabla usuario para evitar el almacenamiento de datos calculados, conforme a la indicacion recibida.

### Correccion de Claves Primarias y Foraneas
- Tabla Asistencia: Se ha redefinido la PK como una clave compuesta por (idSocio, idClase). Se ha actualizado la representacion en el diagrama para que coincida con esta estructura logica.
- Tabla Entrenador: Se ha añadido el campo idClase para cumplir con el diseño del diagrama, permitiendo la vinculacion con las clases correspondientes.
- Tabla Socio: Se ha corregido el sentido de la relacion. Se ha añadido la FK idMembresia en la tabla Socio y se ha eliminado el campo idSocio de la tabla membresia para que la jerarquia sea correcta segun el diagrama.

### Actualizacion del script fitnet.sql
Se ha ampliado el archivo SQL incluyendo las secciones correspondientes a:
- Sentencias INSERT para poblar las tablas con datos de prueba.
- Sentencias ALTER TABLE para modificaciones estructurales pendientes.
- Sentencias de ejemplo para operaciones UPDATE y DELETE sobre los registros existentes.