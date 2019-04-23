*** Settings ***
Library  Selenium2Library
Library  SauceLabs.py

*** Variables ***

@{_tmp} 
    ...  browserName: %{browserName},
    ...  platform: %{platform},
    ...  version: %{version},
    ...  username: %{SAUCE_USERNAME},
    ...  accessKey: %{SAUCE_ACCESS_KEY},
    ...  name: Robot Sauce Test

${BROWSER}          %{ROBOT_BROWSER}
${CAPABILITIES}     ${EMPTY.join(${_tmp})} 
${REMOTE_URL}       http://ondemand.saucelabs.com/wd/hub
${PAGE_TITLE}       Sauce Labs: Login

*** Keywords ***

Open test browser
    Open browser  http://www.saucedemo.com  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}

Open inventory page
    Open browser  http://www.saucedemo.com/inventory.html  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}

Close test browser
    Run keyword if  '${REMOTE_URL}' != ''
    ...  Report Sauce status
    ...  ${TEST_NAME} 
    ...  ${TEST_STATUS} 
    Close all browsers