*** Settings ***

Resource  ../Resources/Common.robot
Resource  ../Resources/Login.robot

Test Setup  Common.Open test browser
Test Teardown  Common.Close test browser


*** Test Cases ***

Valid Login with Standard User

	Login.As Standard User

	Page should contain element  id:shopping_cart_container

Invalid Login with Invalid User

	Login.As Invalid User

	Page should contain element  class:error-button
