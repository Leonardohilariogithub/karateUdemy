
Feature: Tests for the home page

  Background: Define URL
    Given url 'https://conduit.productionready.io/api/'


  Scenario: Get all tags
    Given path 'tags'
    When method Get
    Then status 200
    And match response.tags == "#array"
    And match each response.tags == "#string"

  Scenario: Get 10 articles from the page
    Given params { limit: 10, offset: 0}
    Given path 'articles'
    When method Get
    Then status 200
    And match response == { "articles": "#[3]", "articlesCount": 3}
    And match response.articlesCount == 3













