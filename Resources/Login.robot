*** Settings ***
Library  Selenium2Library
Library  SauceLabs.py


*** Keywords ***

As Standard User

    Input text  id:user-name  standard_user
	Input text  id:password  secret_sauce
	Click button  class:btn_action


As Invalid User

    Input text  id:user-name  invalid
	Input text  id:password  invalid
	Click button  class:btn_action
