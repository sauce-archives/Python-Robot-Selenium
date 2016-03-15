run_all_in_parallel:
	make -j test_Windows_10_edge_13 test_OX_X_10_11_firefox_44 test_OS_X_10_10_chrome_46

test_Windows_10_edge_13:
	platform="Windows 10" browserName=MicrosoftEdge version=13 TEST_NAME="test_Windows_10_edge_13" ROBOT_BROWSER=firefox \
		pybot sample_test.robot

test_OX_X_10_11_firefox_44:
	platform="OS X 10.11" browserName=firefox version=44.0  TEST_NAME="test_OX_X_10_11_firefox_44" ROBOT_BROWSER=firefox \
		pybot sample_test.robot

test_OS_X_10_10_chrome_46:
		platform="OS X 10.10" browserName=chrome version=46.0  TEST_NAME=test_OS_X_10_10_chrome_46 ROBOT_BROWSER=chrome\
		pybot sample_test.robot