import os
from sauceclient import SauceClient
from robot.libraries.BuiltIn import BuiltIn

username = os.environ.get('SAUCE_USERNAME')
access_key = os.environ.get('SAUCE_ACCESS_KEY')

sauce_client = SauceClient(username, access_key)

def report_sauce_status(name, status):
    selenium = BuiltIn().get_library_instance('Selenium2Library')
    job_id = selenium._current_browser().session_id
    passed = status == 'PASS'
    sauce_client.jobs.update_job(job_id, passed = passed, name = name)
    print "SauceOnDemandSessionID=%s job-name=%s" % (job_id, name)

