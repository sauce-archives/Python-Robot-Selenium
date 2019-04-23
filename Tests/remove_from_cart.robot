*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open inventory page
Test Teardown  Common.Close test browser
 
*** Variables ***

${ONE}  1
${TWO}  2

*** Test Cases ***

Remove One Item From Cart

	Click button  class:btn_primary
        Click button  class:btn_primary

	Click button  class:btn_secondary

	Page should contain element  class:shopping_cart_badge
	${ONE}  Get text  class:shopping_cart_badge
