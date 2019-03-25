Feature: Search EastEnders Next Episode.


  Background: Given i enter url as "https://www.bbc.co.uk/"

  @End2End @Regression
  Scenario: search EastEnders Next Episode using TV link.

    Given i enter url as "https://www.bbc.co.uk/"
    When i click on More button
    When i click on TV button
    Then i shoud see url as "https://www.bbc.co.uk/iplayer/guide"
    When i click on Channels Button
    When i click on ONE button
    Then i should see url as "https://www.bbc.co.uk/bbcone"
    When i click on EastEnders image
    And i click on Programme website link
    Then i should see EastEnders page title
    When i click on Upcoming Episodes







