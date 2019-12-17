import os
from sauceclient import SauceClient
from robot.libraries.BuiltIn import BuiltIn

username = os.environ.get('SAUCE_USERNAME')
access_key = os.environ.get('SAUCE_ACCESS_KEY')
apibase = os.environ.get('DC_ENDPOINT')

sauce_client = SauceClient(sauce_username=username, sauce_access_key=access_key, apibase=apibase)

def report_sauce_status(name, status):
    selenium = BuiltIn().get_library_instance('Selenium2Library')
    job_id = selenium.driver.session_id
    passed = status == 'PASS'
    sauce_client.jobs.update_job(job_id, passed = passed, name = name)
    print("SauceOnDemandSessionID={} job-name={}".format(job_id, name))


