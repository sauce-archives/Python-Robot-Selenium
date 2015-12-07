*** Settings ***

Library  Selenium2Library
Library  SauceLabs.py

Test Setup  Open test browser
Test Teardown  Close test browser
 
*** Variables ***

@{_tmp} 
	...  name: Sample Robot Framework Test on Sauce,
	...  browserName: %{browserName},
	...  platform: %{platform},
	...  version: %{version}

${BROWSER}      	%{browserName}
${CAPABILITIES}     ${EMPTY.join(${_tmp})} 
${KEY}              %{SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}
${REMOTE_URL}       http://${KEY}@ondemand.saucelabs.com:80/wd/hub
${PAGE_TITLE}       Sauce Labs: Login

*** Test Cases ***

Example of connecting to Sauce via Robot Framework

	Go to  https://saucelabs.com/login

	Page should contain element  name=username
	Page should contain element  name=password

	Input text  name=username  anonymous
	Input text  name=password  secret
	Click button  id=submit

*** Keywords ***

Open test browser
    Open browser  about:  ${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}

Close test browser
    Run keyword if  '${REMOTE_URL}' != ''
    ...  Report Sauce status
    ...  ${SUITE_NAME} | ${TEST_NAME}
    ...  ${TEST_STATUS} 
    Close all browsers

