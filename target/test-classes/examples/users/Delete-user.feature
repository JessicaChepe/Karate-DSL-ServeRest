Feature: Eliminar un usuario

  Como un administrador del sistema,
  Quiero poder gestionar los usuarios a través de la API,
  Para administrar la base de datos de usuarios

  Background:
    * url 'https://serverest.dev/'

  Scenario: Eliminar usuario por ID
    * def userId = '60vBUu58EGSjjQ3w'
    * path 'usuarios', userId
    When method DELETE
    Then status 200