Feature: Actualizar un usuario existente

  Como un administrador del sistema,
  Quiero poder gestionar los usuarios a través de la API,
  Para administrar la base de datos de usuarios

  Background:
    * url 'https://serverest.dev/'

  Scenario: Actualizar nombre de usuario
    * def userId = '0uxuPY0cbmQhpEz1'
    * path 'usuarios', userId
    * def updatedUser =
      """
      {
        "nome": "Mandy Roberts",
        "email": "Terence_Heathcote@yahoo.com",
        "password": "prueba12345",
        "administrador": "true",
      }
      """
    Given request updatedUser
    When method PUT
    Then status 200
    And match response.message == "Registro alterado com sucesso"

