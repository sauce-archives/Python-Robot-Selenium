*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open test browser
Test Teardown  Common.Close test browser
 
*** Variables ***

*** Test Cases ***

Valid Login with Standard User

	Page should contain element  id:user-name
	Page should contain element  id:password

	Input text  id:user-name  standard_user
	Input text  id:password  secret_sauce
	Click button  class:btn_action

	Page should contain element  id:shopping_cart_container

Invalid Login with Invalid User

	Input text  id:user-name  locked_out_user
	Input text  id:password  secret_sauce
	Click button  class:btn_action

	Page should contain element  class:error-button
