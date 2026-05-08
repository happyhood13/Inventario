# Inventario
Mi Sistema de Gestión de Inventario
¡Hola! Bienvenido a la documentación de mi sistema de inventario. Diseñé este programa para llevar un control físico detallado y ordenado de los activos y equipos dentro de una institución. A continuación, te explico cómo funciona y cómo debes utilizarlo.

🔐 Acceso al Sistema (Perfil Profesor)
Para poder utilizar el módulo de inventario, diseñé un sistema de acceso basado en roles.

Para entrar a la gestión de inventario, debes iniciar sesión con una cuenta que tenga el rol de Profesor. Al hacer login, mi programa detecta automáticamente tu nivel de usuario y te redirigirá a un panel de control (Dashboard) exclusivo para profesores. Desde ahí, en el menú lateral izquierdo, tendrás acceso a todas las herramientas del inventario.

📦 ¿Qué hace el Inventario y cómo utilizarlo?
Mi programa divide el control de los equipos en 7 secciones. La idea es que la información esté bien organizada, por lo que primero debes registrar las bases (catálogos) antes de asignar un equipo físicamente a un lugar.

Aquí te explico el orden exacto en el que debes usar cada sección:


Paso 1: Configurar los Catálogos Base
Antes de meter un equipo al sistema, necesitas decirle al programa a dónde va a ir y a qué área pertenece.

Ubicaciones (/ubicaciones): Aquí debes dar de alta los espacios físicos reales. Por ejemplo, puedes registrar "Laboratorio de Cómputo A", "Almacén Principal" o "Aula 102".
Departamentos (/departamentos): Aquí registras las áreas administrativas responsables de los equipos, como "Departamento de Sistemas", "Mantenimiento" o "Dirección Académica".
Tipos de Código (/tipo-codigo): Aquí defines qué tipo de etiqueta física vas a pegarle al equipo. Puedes registrar tipos como "Código de Barras", "Código QR"


Paso 2: Dar de alta el Equipo
Una vez que tienes las bases, ya puedes registrar el producto.

Equipos (/equipos): En esta sección registras el modelo general del aparato (por ejemplo, "Proyector Epson Modelo X" o "Laptop Dell Inspiron"). Aquí vinculas el equipo con su Tipo de Código y puedes subir fotografías para que sea fácil identificarlo visualmente.


Paso 3: Identificadores Únicos
Ahora que el programa conoce el modelo del equipo, necesitas registrar sus identificadores únicos físicos.

Códigos (/codigo): Aquí introduces el valor alfanumérico de la etiqueta que le pegaste al equipo y lo relacionas con el equipo que creaste en el paso anterior.
Números de Serie (/no-serie): Aquí registras el número de serie único de fábrica que trae el aparato y también lo asocias al equipo correspondiente.
Paso 4: Asignación Final (El Inventario Real)
¡Listo! Ya tienes todo configurado. Ahora es momento de asentar físicamente el artículo.

Inventario (/inventario): Esta es la sección principal de mi programa. Aquí unes toda la información.
Al crear un nuevo registro, el sistema te pedirá que selecciones el Equipo que diste de alta, su Número de Serie, la Ubicación en donde lo vas a poner y el Departamento responsable, junto con la cantidad.
Búsqueda y Filtros: Diseñé un panel superior en esta pantalla para que puedas buscar rápidamente cualquier aparato. Puedes buscar escribiendo texto o usando las listas desplegables para filtrar por Equipos, Departamentos o Ubicaciones específicas.
