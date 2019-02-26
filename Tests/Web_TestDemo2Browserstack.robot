*** Settings ***
Documentation  These will test the Home design page
Resource  ../Resources/Common.robot
Resource  ../Resources/WebApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

#  robot -d results -i CurrentTC tests/web_testdemo1.robot
#SauceLabs
#  robot -d results -v DESIRED_CAPABILITIES:"name:Demo Only,platform:windows 10,browserName:chrome,version:59.0,screenResolution:1600x1200" -i CurrentTC tests/web_testdemo1.robot
#  robot -d results -v DESIRED_CAPABILITIES:"name:Demo Only,platform:macOS 10.13,browserName:safari,version:11.1,screenResolution:1600x1200" -i CurrentTC tests/web_testdemo1.robot
#Bstack
# robot -d results -v DESIRED_CAPABILITIES:"name:Bstack Demo Only,browser:Chrome,browser_version:62.0,os:Windows,os_version:10,resolution:1600x1400" -i CurrentTC tests/web_testdemo2BrowserStack.robot
# robot -d results -v DESIRED_CAPABILITIES:"name:Bstack Demo Only,browser:Chrome,browser_version:62.0,os:Windows,os_version:10" -i CurrentTC tests/web_testdemo2BrowserStack.robot
# robot -d results -v DESIRED_CAPABILITIES:"name:Bstack Demo Safari,browser:Safari,browser_version:12.0,os:OS X,os_version:Mojave,resolution:1600x1400" -i CurrentTC tests/web_testdemo2BrowserStack.robot



*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.rawsonhomes.com.au/
${BROWSERSTACK_USERNAME} =  dd.autotraining
${BROWSERSTACK_ACCESS_KEY} =
${REMOTE_URL} =  http://ddauto1:stZcfydZA7WDF5mZVyLJ@hub.browserstack.com:80/wd/hub
${DESIRED_CAPABILITIES} =  os:Windows,os_version:10,browser:Chrome,browser_version:62.0
#${DESIRED_CAPABILITIES} =  os:Windows,os_version:10,browser:Chrome,browser_version:62.0,resolution:1024x768
${SEARCH_TERM} =  echo plus

*** Test Cases ***
Scenario: As a user, I can access the Home Design page
    [Tags]  CurrentTC
    Given a user can access the Homepage
    When user clicks top navigation menu for Home Design
    Then user is redirected to the Home Design page

Scenario: As a user, I can access the Home + Land Packages page
    [Tags]
    Given a user can access the Homepage
    When User clicks top navigation menu for Home + Land package
    Then User is redirected to the Home + Land Package page