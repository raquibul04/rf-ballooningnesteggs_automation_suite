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