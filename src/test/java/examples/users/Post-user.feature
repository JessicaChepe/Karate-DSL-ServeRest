Feature: Registrar usuario

  Como un administrador del sistema,
  Quiero poder gestionar los usuarios a través de la API,
  Para administrar la base de datos de usuarios

  Background:
    * url 'https://serverest.dev'
    * def basePath = 'usuarios'

  Scenario: Registrar usuario exitosamente
    * def user =
      """
      {
        "nome": "Fulano da Silva",
        "email": "ffsilvas@qa.com.br",
        "password": "test",
        "administrador": "true"
      }
      """
    Given path basePath
    And request user
    When method post
    Then status 201

    * def id = response._id
    * print 'created id is: ', id

    # Verificar que el usuario fue creado correctamente
    Given path basePath, id
    When method get
    Then status 200
    And match response.nome == user.nome
    And match response.email == user.email

  Scenario: Registrar usuario con email duplicado
    * def usuario =
    """
      {
        "nome": "Duplicado",
        "email": "beltrano100173@qa.com.br",
        "password": "test123",
        "administrador": "true",
      }
    """
    Given path 'usuarios'
    And request usuario
    When method post
    Then status 400
    And match response.message == "Este email já está sendo usado"
