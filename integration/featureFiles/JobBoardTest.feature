@JobBoardTest
Feature: Feature to test Job Board Application
    
  @First @Smoke
  Scenario: 1. Verify the website title - Read the title of the website and verify the text
    Given User open the Browser and Navigate to URL
    When Page Opens successfully get the Page title
    And Compare Title with expected value
    Then Close Browser

  @Second @Smoke
  Scenario: 2. Verify the website heading - Read the heading of the website and verify the text.
    Given User open the Browser and Navigate to URL
    When Page Opens get Landing Page Heading
    And Compare Heading with expected value
    Then Close Browser

  @Third
  Scenario: 3. Get the url of the header image - Print the url of the header image to the console
    Given User open the Browser and Navigate to URL
    When Page Opens get url of Header Image
    And Print url to Console
    Then Close Browser

  @Fourth @Smoke
  Scenario: 4. Verify the website’s second heading - Read the second heading of the website and verify the text
    Given User open the Browser and Navigate to URL
    When Page Opens get Landing Page Second Heading
    And Compare Second Heading with expected value
    Then Close Browser

  @Fifth @Smoke
  Scenario: 5. Navigate to another page : Navigate to the “Jobs” page on the site.
    Given User open the Browser and Navigate to URL
    When Page Opens find navigation bar and Click Jobs
    And Read Page Title and Verify
    Then Close Browser

  @Sixth
  Scenario: 6. Apply to a job : Search for a job and apply for it.
    Given User open the Browser and Navigate to URL
    When Page Opens find navigation bar and Click Jobs
    And Click and open the jobs listed.
    And Click apply button and print the emailId to the console
    Then Close Browser

  @Seventh
  Scenario: 7. Create a new job listing : Create a new job listing.
    Given User open the Browser and Navigate to URL
    When Page Opens click Post a Job
    And Fill in the necessary details and click the Preview button.
    And Click Submit Listing
    And Verify that the job posted by visiting the jobs page
    Then Close Browser