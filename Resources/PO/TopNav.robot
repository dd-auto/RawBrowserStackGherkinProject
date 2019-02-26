*** Settings ***
Documentation  Top navigation
Library  SeleniumLibrary

*** Variables ***
${HOME_DESIGNS} =  xpath=//a[@title='Award-Winning Home Designs']
${HOME_+LANDS} =  xpath=//a[@title='Rawson House and Land Packages']

*** Keywords ***
Access Home Designs
    click link  ${HOME_DESIGNS}

Access Home + Land Packages
    click link  ${HOME_+LANDS}

Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}
    capture page screenshot

Submit Search
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input