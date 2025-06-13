Feature: Obtener lista de usuarios

  Como un administrador del sistema,
  Quiero poder gestionar los usuarios a través de la API,
  Para administrar la base de datos de usuarios

  Background:
    * url 'https://serverest.dev'

  Scenario: Obtener todos los usuarios
    Given path 'usuarios'
    When method get
    Then status 200
    And match response == { quantidade: '#number', usuarios: '#[]' }
    And match each response.usuarios contains { nome: '#string', email: '#string', _id: '#string' }
