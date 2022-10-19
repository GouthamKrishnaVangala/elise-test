Feature: Elise Test Automation challenge

      As an add-in developer I want to publish a version of my add-in on the Elise marketplace, 
      so that I am able to release new features and ELISE users are able to use my add-in with every published ELISE version.

    Scenario: Verify create new version page in ELISE marketplace
    Given I navigate to ELISE marketplace create new version page with valid credentials
    | URL | username | password |
    TODO:||||
    Then I should see the header 'Create new version'
    And the 'Version' field with character limit '0/20' should be displayed and 'editable'
    And the 'Description' field with character limit '0/5000' should be displayed and 'editable'
    And the 'Release notes' field with character limit '0/5000' should be displayed and 'editable'
    And 'Minimum Compatible ELISE Version' dropdown field should be displayed and 'enabled'
    And 'Binary(elsapp)' upload field should be displayed and 'enabled'
    And 'Example files(else)' upload field should be displayed and 'enabled'
    And 'Save and Submit' button should be displayed and 'disabled'
    And 'Save draft' button should be displayed and 'disabled'
    And 'Cancel' button should be displayed and 'enabled'

    Scenario: Verify Version, Description and Release notes fields
    When I input valid data 'vers.ion@-/2' of '12' characters in 'Version' input field
    Then the character limit should be updated to '12/20'
    When I input valid data 'description@-2/🚕☜(ﾟヮﾟ☜)®™' of '25' characters in 'Description' input field
    Then the character limit should be updated to '25/5000'
    When I input valid data 'RELEASE notes #%&*🚕☜(ﾟヮﾟ☜)®™' of '28' characters in 'Release notes' input field
    Then the character limit should be updated to '28/5000'

    Scenario: Verify Description and Release notes input field resize
    When I click and drag resize of 'Description' field
    Then 'Description' input field should be resized
    When I click and drag resize of 'Release notes' field
    Then 'Release notes' input field should be resized

    Scenario: Verify Binary and Example files upload with invalid file type
    When I upload an invalid file type in 'Binary' field
    Then an error should be displayed TODO: 
    When I upload an invalid file type in 'Example files' field 
    Then an error should be displayed TODO:

    Scenario: Verify multiupload binary functionility
    When I upload multiple files with valid file type in 'Binary' field
    Then files should be uploaded successfully
    When I upload multiple files with valid file type in 'Example fiels' field
    Then files should be uploaded successfully

    Scenario: Verify browser refresh after data input
    When I refresh the page after data input
    Then TODO:

    Scenario: Verify browser forward/backward after input
    Given I am in create new version page
    When I input valid data in 'Version', 'Description', 'Release notes' input fields
    And I select '22.07 Elegant Europa' from the 'Mimimum Compatible ELISE Version' dorpdown field
    And I upload valid binary in 'Binary (elsapp)' field
    When I click browser backword/forward after data input
    Then TODO:

    Scenario: Verify when user click outside links
    Given I am in create new version page
    When I input valid data in 'Version', 'Description', 'Release notes' input fields
    And I select '22.07 Elegant Europa' from the 'Mimimum Compatible ELISE Version' dorpdown field
    And I upload valid binary in 'Binary (elsapp)' field
    When I click Support/Learn/Download/Dev links from the header or click ELISE header
    Then TODO:

    Scenario: Verify Cancel button functionility
    Given I am in create new version page
    When I input valid data in 'Version', 'Description', 'Release notes' input fields
    And I select '22.07 Elegant Europa' from the 'Mimimum Compatible ELISE Version' dorpdown field
    And I upload valid binary in 'Binary (elsapp)' field
    When I click 'Cancel' button
    Then I should be TODO: 

    Scenario: Verify Save draft
    Given I am in create new version page
    When I input valid data in 'Version', 'Description', 'Release notes' input fields
    And I select '22.07 Elegant Europa' from the 'Mimimum Compatible ELISE Version' dorpdown field
    And I upload valid binary in 'Binary (elsapp)' field
    Then 'Save draft' button should be enabled
    When I click 'Save draft' button
    Then the draft version should be saved
    And should be editable at later point
    And draft version should be visible to other developers in the organization

    Scenario: Verify submit for review
    Given I am in create new version page
    When I input valid data in 'Version', 'Description', 'Release notes' input fields
    And I select '22.07 Elegant Europa' from the 'Mimimum Compatible ELISE Version' dorpdown field
    And I upload valid binary in 'Binary (elsapp)' field
    Then 'Save and Submit' button should be enabled
    When I click 'Save and Submit' button
    Then TODO:

    Scenario: Verify description and release notes fields which has atleast one previous version available
    Given I am in create version page which has atleast one previous version available
    Then 'Description' field should be prefilled with the content of the previous version's description
    And 'release notes' field be prefilled with the content of the previous version's release notes

    Scenario: Verify info icon beside each field in Create new version page
    Given I am in create new version page
    Then an info icon should be displayed beside each field