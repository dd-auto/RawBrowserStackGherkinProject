*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Home_Designs.robot
Resource  ./PO/Home+Land_Package.robot

*** Variables ***

*** Keywords ***
#Search For Products
#    LandingPage.Load
#    LandingPage.Verify Page Loaded
#    TopNav.Search for Products
#    SearchResults.Verify Search Completed

#Top navigation
A user can access the Homepage
    LandingPage.Load
    Verify Page Loaded

User clicks top navigation menu for Home Design
    TopNav.Access Home Designs

User clicks top navigation menu for Home + Land package
    TopNav.Access Home + Land Packages

#Pages verification
User is redirected to the Home Design page
    Home_Designs.Verify Home Design page

User is redirected to the Home + Land Package page
    Home+Land_Package.Verify Home + Land Package page

