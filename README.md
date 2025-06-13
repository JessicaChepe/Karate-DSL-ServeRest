1. Objetivo
Crear una suite de pruebas automatizadas para la API de Usuarios de ServeRest 
(https://serverest.dev/) utilizando Karate DSL.

Historia de Usuario
Como un administrador del sistema, 
Quiero poder gestionar los usuarios a través de la API, 
Para administrar la base de datos de usuarios.


Especificaciones

1. Configurar el proyecto con Karate DSL.
    Comando para generar el arquetipo:
  mvn archetype:generate \
  -DarchetypeGroupId=io.karatelabs \
  -DarchetypeArtifactId=karate-archetype \
  -DarchetypeVersion=1.5.0 \
  -DgroupId=com.mycompany \
  -DartifactId=myproject
   
3. Implementar escenarios de prueba para cada operación CRUD:
• GET /usuarios - Listar usuarios
• POST /usuarios - Registrar usuario
• GET /usuarios/{_id} - Buscar usuario por ID
• PUT /usuarios/{_id} - Actualizar usuario
• DELETE /usuarios/{_id} - Eliminar usuario

Ejecución 

Comando: 
mvn clean test

RunMaven:

![image](https://github.com/user-attachments/assets/93894222-6215-4b56-bc5a-e31cd3dac2e4)
