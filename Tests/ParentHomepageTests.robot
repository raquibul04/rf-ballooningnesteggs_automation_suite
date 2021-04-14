*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SetupEnv.robot
Resource    ../Apps/ParentHomepageApp.robot


Test Setup          Begining the test
Test Teardown       Ending the tests by closing the browser


*** Test Cases ***
Ensure that parent users should be able to navigate to the Tracking link from the header
    [Documentation]
    [Tags]  parent
    ParentHomepageApp.Parent user navigates to the Family tab from the header section on homepage

Ensure that parent users should be able to navigate to the connections page by clicking on the Add Connections icon
    [Documentation]
    [Tags]  parent
    ParentHomepageApp.Parent users navigates to the connections page by clicking on the Add connections icon

Ensure that parent users should be able to navigate to the connections page by clicking on the Add Connections icon
    [Documentation]
    [Tags]  parent1
    ParentHomepageApp.Prent users navigates to the gifts page by clicking on the gift icon under notifications

Ensure that the parent users can navigate to the event page from homepage
    [Documentation]
    [Tags]  parent
    ParentHomepageApp.Parent user navigates to one of the event pages from the homepage

Ensure that the parent users can navigate to the event page from homepage
    [Documentation]
    [Tags]  parent1
    ParentHomepageApp.Parent user selects a child for the event card

Ensure that the parent users can navigate to the Edit profile page from Family tab
    [Documentation]
    [Tags]  parent
    ParentHomepageApp.Parent user navigate to the Edit Family page

Ensure that the parent users can navigate to the My Updates tab and check the events
    [Documentation]
    [Tags]  parent
    ParentHomepageApp.Parent user checks the content under MY Updates tab the from Family tab

Ensure that the parent users can navigate to the Gifts tab from My Family tab
    [Documentation]
    [Tags]  parent
    ParentHomepageApp.Parent user navigates to the Gifts tab from the Family tab

Ensure that the parent users can navigate to the Events tab from My Family tab
    [Documentation]
    [Tags]  parent
    ParentHomepageApp.Parent user navigates to the Events tab from the Family tab

Ensure that the parent users can navigate to the CARDS tab from My Family tab
    [Documentation]
    [Tags]  parent123
    ParentHomepageApp.Parent user navigates to the Cards tab from the Family tab
