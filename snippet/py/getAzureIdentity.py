import logging, os
import azure.functions as func

def main(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')
    IDENTITY_ENDPOINT = os.environ['IDENTITY_ENDPOINT']
    IDENTITY_HEADER = os.environ['IDENTITY_HEADER']
    cmd = 'curl "%s?resource=https://management.azure.com&api-version=2017-09-01" -H secret:%s' % (IDENTITY_ENDPOINT, IDENTITY_HEADER)
    val = os.popen(cmd).read()
    return func.HttpResponse(val, status_code=200)

