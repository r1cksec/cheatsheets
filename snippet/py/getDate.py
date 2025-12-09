from datetime import datetime
from zoneinfo import ZoneInfo

# set berlin timezone
timeZone = datetime.now(ZoneInfo("Europe/Berlin"))
timestamp = timeZone.strftime("%d.%m.%Y %H:%M:%S")
print(timestamp)

