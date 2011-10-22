@staff_members
Feature: Staff Members
  In order to have staff_members on my website
  As an administrator
  I want to manage staff_members

  Background:
    Given I am a logged in refinery user
    And I have no staff_members

  @staff_members-list @list
  Scenario: Staff Members List
   Given I have staff_members titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of staff_members
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @staff_members-valid @valid
  Scenario: Create Valid Staff Member
    When I go to the list of staff_members
    And I follow "Add New Staff Member"
    And I fill in "Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 staff_member

  @staff_members-invalid @invalid
  Scenario: Create Invalid Staff Member (without name)
    When I go to the list of staff_members
    And I follow "Add New Staff Member"
    And I press "Save"
    Then I should see "Name can't be blank"
    And I should have 0 staff_members

  @staff_members-edit @edit
  Scenario: Edit Existing Staff Member
    Given I have staff_members titled "A name"
    When I go to the list of staff_members
    And I follow "Edit this staff_member" within ".actions"
    Then I fill in "Name" with "A different name"
    And I press "Save"
    Then I should see "'A different name' was successfully updated."
    And I should be on the list of staff_members
    And I should not see "A name"

  @staff_members-duplicate @duplicate
  Scenario: Create Duplicate Staff Member
    Given I only have staff_members titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of staff_members
    And I follow "Add New Staff Member"
    And I fill in "Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 staff_members

  @staff_members-delete @delete
  Scenario: Delete Staff Member
    Given I only have staff_members titled UniqueTitleOne
    When I go to the list of staff_members
    And I follow "Remove this staff member forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 staff_members
 