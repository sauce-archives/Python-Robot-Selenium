run_all_in_parallel:
	make -j test_Windows_10_chrome_69 test_OX_X_10_13_firefox_61 test_OS_X_10_13_chrome_61

test_Windows_10_chrome_69:
	platform="Windows 10" browserName=chrome version=69 ROBOT_BROWSER=chrome pybot -d test_Windows_10_chrome_69 -o test_Windows_10_chrome_69.xml -l test_Windows_10_chrome_69_log.html -r test_Windows_10_chrome_69_report.html Tests/sample_test.robot

test_OX_X_10_13_firefox_61:
	platform="OS X 10.13" browserName=firefox version=61.0 ROBOT_BROWSER=firefox pybot -d test_OX_X_10_13_firefox_61 -o test_OX_X_10_13_firefox_61.xml -l test_OX_X_10_13_firefox_61_log.html -r test_OX_X_10_13_firefox_61_report.html Tests/sample_test.robot

test_OS_X_10_13_chrome_61:
	platform="OS X 10.13" browserName=chrome version=61.0 ROBOT_BROWSER=chrome pybot -d test_OS_X_10_13_chrome_61 -o test_OS_X_10_13_chrome_61.xml -l test_OS_X_10_13_chrome_61_log.html -r test_OS_X_10_13_chrome_61_report.html Tests/sample_test.robot