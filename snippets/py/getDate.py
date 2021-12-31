import datetime

dat = datetime.datetime.now()

print(dat.year)
print(dat.month)
print(dat.day)
print(dat.hour)
print(dat.minute)
print(dat.second)

createDate = str(dat.year)+"-"+str(dat.month)+"-"+str(dat.day)
print(createDate)

# alternative
createDate = datetime.datetime.today().strftime("%d-%m-%Y_%H:%M:%S")
print(createDate)

