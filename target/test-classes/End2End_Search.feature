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



#  @End2End1 @Regression1
#  Scenario: Search EastEnders Next Episode using iPlayer tab and Catagory
##    Given i enter url as "https://www.bbc.co.uk/"
#    When i click on iPlayer button
#    Then i should see url as "https://www.bbc.co.uk/iplayer"
#    When i click on Catagories button
#    When i click on Drama & Soaps
#    Then i should see url as "https://www.bbc.co.uk/iplayer/categories/drama-and-soaps/featured"
#    And i should see page title as Drama & Soaps
#    When i click on EastEnders image
#    Then i should see url as "https://www.bbc.co.uk/iplayer/episode/m0003fw8/eastenders-22032019"
#    When  i click on Programme website link
#    Then i should see url as "https://www.bbc.co.uk/programmes/b006m86d"
#    And page title as EastEnders
#    When i click on Upcoming Episodes
#    Then i should see url as "https://www.bbc.co.uk/programmes/b006m86d/broadcasts/upcoming"
#
#
#
#
#@End2End2 @Regression2
#  Scenario: Search EastEnders Next Episode using A-Z link
#  When i click on iPlayer button
#  Then i should see url as "https://www.bbc.co.uk/iplayer"
#  When i click on A-Z link
#  Then i should see url as "https://www.bbc.co.uk/iplayer/a-z/a"
#  When i click on letter E
#  Then i should see url as "https://www.bbc.co.uk/iplayer/a-z/e
#  When i click on EastEnders title
#  Then i should see url as "https://www.bbc.co.uk/iplayer/episode/m0003mht/eastenders-25032019"
#  When  i click on Programme website link
#  Then i should see url as "https://www.bbc.co.uk/programmes/b006m86d"
#  And page title as EastEnders
#  When i click on Upcoming Episodes
#  Then i should see url as "https://www.bbc.co.uk/programmes/b006m86d/broadcasts/upcoming"
#
#
#
#
#
#


