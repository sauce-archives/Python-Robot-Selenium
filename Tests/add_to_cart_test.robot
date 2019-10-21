*** Settings ***

Resource  ../Resources/Common.robot
Resource  ../Resources/inventory.robot

Test Setup  Common.Open inventory page
Test Teardown  Common.Close test browser
 
*** Variables ***

${ONE}  1
${TWO}  2

*** Test Cases ***

Add One Item to Cart

	Inventory.Add Item To Cart

	Inventory.Has Items In Cart
	${ONE}  Get text  class:shopping_cart_badge

Add Two Items to Cart

	Inventory.Add Item To Cart
	Inventory.Add Item To Cart

	${TWO}  Get text  class:shopping_cart_badge