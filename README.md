🧪 Reto de Automatización QA - BackEnd


🎯 Objetivo

Desarrollar una suite de pruebas automatizadas para la API de Usuarios de ServeRest utilizando Karate DSL.

📖 Historia de Usuario
Como administrador del sistema,
Quiero gestionar los usuarios a través de la API,
Para administrar eficientemente la base de datos de usuarios.

__________________________________________________________________________________________________________________

⚙️ Especificaciones Técnicas
1. Configuración del Proyecto
Inicializa el proyecto con el arquetipo oficial de Karate DSL:

mvn archetype:generate \
  -DarchetypeGroupId=io.karatelabs \
  -DarchetypeArtifactId=karate-archetype \
  -DarchetypeVersion=1.5.0 \
  -DgroupId=com.mycompany \
  -DartifactId=myproject

2. Escenarios de Prueba (CRUD)
Implementar pruebas automatizadas para las siguientes operaciones de la API:

GET /usuarios – Listar todos los usuarios
POST /usuarios – Registrar un nuevo usuario
GET /usuarios/{_id} – Obtener usuario por ID
PUT /usuarios/{_id} – Actualizar información de un usuario
DELETE /usuarios/{_id} – Eliminar un usuario

__________________________________________________________________________________________________________________

▶️ Ejecución de Pruebas

Para ejecutar la suite de pruebas, utiliza el siguiente comando:

-> mvn clean test

Ejemplo de ejecución en Maven:

![image](https://github.com/user-attachments/assets/58b8a157-92ba-427d-b845-ccacb7ec1157)


![image](https://github.com/user-attachments/assets/46dbb3f9-afae-4bd5-a920-4f2a60bff90a)
