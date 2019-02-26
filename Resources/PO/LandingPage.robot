*** Settings ***
Documentation  Web Landing Page
Library  SeleniumLibrary

*** Variables ***
${HOME_DESIGNS} =  xpath=//a[@title='Award-Winning Home Designs']

*** Keywords ***
Load
    go to  ${START_URL}
    sleep  2s

Verify Page Loaded
    wait until element is visible  ${HOME_DESIGNS}
    capture page screenshot