*** Settings ***

Resource  ../Resources/Common.robot
Resource  ../Resources/Inventory.robot

Test Setup  Common.Open inventory page
Test Teardown  Common.Close test browser
 
*** Variables ***

${ONE}  1
${TWO}  2

*** Test Cases ***

Remove One Item From Cart

	Inventory.Add Item To Cart
	Inventory.Add Item To Cart

	Inventory.Remove Item From Cart

	Inventory.Has Items In Cart
	${ONE}  Get text  class:shopping_cart_badge
