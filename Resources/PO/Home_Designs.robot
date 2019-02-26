*** Settings ***
Documentation  A
Library  SeleniumLibrary

*** Variables ***
${home_design_url} =  https://www.rawsonhomes.com.au/home-designs#/1
${home_design_single_storey_icon} =  xpath=//span[@data-use='#sprite-icon-house-single']

*** Keywords ***
Verify Home Design page
    sleep  2s
    run keyword and continue on failure  location should contain  ${home_design_url}
    page should contain element  ${home_design_single_storey_icon}
    capture page screenshot
