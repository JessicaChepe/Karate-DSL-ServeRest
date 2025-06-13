Feature: Buscar usuario por ID

  Como un administrador del sistema,
  Quiero poder gestionar los usuarios a través de la API,
  Para administrar la base de datos de usuarios

  Background:
    * url 'https://serverest.dev/'

  Scenario: Buscar usuario
    * def userId = '0uxuPY0cbmQhpEz1'
    * path 'usuarios', userId
    Given method GET
    Then status 200
