run_all_in_parallel:
	make -j test_Windows_10_chrome_69 test_OX_X_10_13_firefox_61 test_OS_X_10_13_chrome_61

test_Windows_10_chrome_69:
	platform="Windows 10" browserName=chrome version=69 ROBOT_BROWSER=chrome pybot Tests/sample_test.robot

test_OX_X_10_13_firefox_61:
	platform="OS X 10.13" browserName=firefox version=61.0 ROBOT_BROWSER=firefox pybot Tests/sample_test.robot

test_OS_X_10_13_chrome_61:
	platform="OS X 10.13" browserName=chrome version=61.0 ROBOT_BROWSER=chrome pybot Tests/sample_test.robot