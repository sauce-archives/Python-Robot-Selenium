run_all_in_parallel:
	make -j test_Windows_10_ie_11 test_OS_X_10_12_firefox test_OS_X_10_13_chrome

test_Windows_10_ie_11:
	platform="Windows 10" browserName='internet explorer' version=11 ROBOT_BROWSER='internet explorer' robot Tests/

test_OS_X_10_12_firefox:
	platform="OS X 10.12" browserName=firefox version=latest ROBOT_BROWSER=firefox robot Tests/

test_OS_X_10_13_chrome:
	platform="OS X 10.13" browserName=chrome version=latest ROBOT_BROWSER=chrome robot Tests/