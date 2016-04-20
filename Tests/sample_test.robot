*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open test browser
Test Teardown  Common.Close test browser
 
*** Variables ***

*** Test Cases ***

Example of connecting to Sauce via Robot Framework 

	Page should contain element  name=username
	Page should contain element  name=password

	Input text  name=username  anonymous
	Input text  name=password  secret
	Click button  id=submit
