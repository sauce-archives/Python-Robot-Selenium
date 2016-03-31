*** Settings ***

Library  Selenium2Library
Library  SauceLabs.py

Test Setup  Open test browser
Test Teardown  Close test browser
 
*** Variables ***

@{_tmp} 
	...  browserName: %{browserName},
	...  platform: %{platform},
	...  version: %{version},
	...  name: Robot %{TEST_NAME}

${BROWSER}      	%{ROBOT_BROWSER}
${CAPABILITIES}     ${EMPTY.join(${_tmp})} 
${KEY}              %{SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}
${REMOTE_URL}       http://${KEY}@ondemand.saucelabs.com:80/wd/hub
${PAGE_TITLE}       Sauce Labs: Login

*** Test Cases ***

Example of connecting to Sauce via Robot Framework

	Page should contain element  name=username
	Page should contain element  name=password

	Input text  name=username  anonymous
	Input text  name=password  secret
	Click button  id=submit

*** Keywords ***

Open test browser
    Open browser  https://saucelabs.com/login/  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}

Close test browser
    Run keyword if  '${REMOTE_URL}' != ''
    ...  Report Sauce status
    ...  ${SUITE_NAME} | ${TEST_NAME}
    ...  ${TEST_STATUS} 
    Close all browsers

