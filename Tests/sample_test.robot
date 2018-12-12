*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open test browser
Test Teardown  Common.Close test browser
 
*** Variables ***

*** Test Cases ***

Example of connecting to Sauce via Robot Framework 

	Page should contain element  css:[data-test=username]
	Page should contain element  css:[data-test=password]

	Input text  css:[data-test=username]  anonymous
	Input text  css:[data-test=password]  secret
	Click button  class:login-button
