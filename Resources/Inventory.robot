*** Settings ***
Library  Selenium2Library
Library  SauceLabs.py


*** Keywords ***

Add Item To Cart

    Click button  class:btn_primary


Remove Item From Cart

	Click button  class:btn_secondary


Has Items In Cart

	Page should contain element  class:shopping_cart_badge
