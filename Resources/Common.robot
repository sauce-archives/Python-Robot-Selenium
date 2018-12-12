*** Settings ***
Library  Selenium2Library
Library  SauceLabs.py

*** Variables ***

@{_tmp} 
    ...  browserName: %{browserName},
    ...  platform: %{platform},
    ...  version: %{version},
    ...  name: Robot Sauce Test

${BROWSER}          %{ROBOT_BROWSER}
${CAPABILITIES}     ${EMPTY.join(${_tmp})} 
${KEY}              %{SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}
${REMOTE_URL}       http://${KEY}@ondemand.saucelabs.com:80/wd/hub
${PAGE_TITLE}       Sauce Labs: Login

*** Keywords ***

Open test browser
    Open browser  http://www.saucedemo.com  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}

Close test browser
    Run keyword if  '${REMOTE_URL}' != ''
    ...  Report Sauce status
    ...  ${TEST_NAME} 
    ...  ${TEST_STATUS} 
    Close all browsers