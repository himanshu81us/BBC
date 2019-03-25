Feature: Search Options



  Background:  Given i enter url as "https://www.bbc.co.uk/"

@Smoke
  Scenario: Varify Search Functionality with valid details
#    Given i enter url as "https://www.bbc.co.uk/"
    When i enter "EastEnders" in search field
    When i click on search button
    Then i should see drop down menu sawing EastEnenders

@Smoke
  Scenario: Varify search Functionality with limited details
#    Given i enter url as "https://www.bbc.co.uk/"
    When i enter "East" in search field
    When I click on search button
    Then i should see drop down menu sawing EastEnenders
@Smoke
  Scenario: Varify search Functionality with detail with special character
#    Given i enter url as "https://www.bbc.co.uk/"
    When i enter "EastEnders@" in search field
    When I click on search button
    Then i should see drop down menu sawing EastEnenders


  @E2E @Reg
  Scenario: End to End scenario using iPlayer tab
#    Given i enter url as "https://www.bbc.co.uk/"
    When i click on iPlayer button
    Then i should see url as "https://www.bbc.co.uk/iplayer"
    When i click on Catagories button
    When i click on Drama & Soaps
    Then i should see url as "https://www.bbc.co.uk/iplayer/categories/drama-and-soaps/featured"
    And i should see page title as Drama & Soaps
    When i click on EastEnders image
    Then i should see url as "https://www.bbc.co.uk/iplayer/episode/m0003fw8/eastenders-22032019"
    When  i click on Programme website link
    Then i should see url as "https://www.bbc.co.uk/programmes/b006m86d"
    And page title as EastEnders
    When i click on Upcoming Episodes
    Then i should see url as "https://www.bbc.co.uk/programmes/b006m86d/broadcasts/upcoming"


  @End2End2 @Regression2
  Scenario: Search EastEnders Next Episode using A-Z link
    When i click on iPlayer button
    Then i should see url as "https://www.bbc.co.uk/iplayer"
    When i click on A-Z link
    Then i should see url as "https://www.bbc.co.uk/iplayer/a-z/a"
    When i click on letter E
    Then i should see url as "https://www.bbc.co.uk/iplayer/a-z/e
    When i click on EastEnders title
    Then i should see url as "https://www.bbc.co.uk/iplayer/episode/m0003mht/eastenders-25032019"
    When  i click on Programme website link
    Then i should see url as "https://www.bbc.co.uk/programmes/b006m86d"
    And page title as EastEnders
    When i click on Upcoming Episodes
    Then i should see url as "https://www.bbc.co.uk/programmes/b006m86d/broadcasts/upcoming"