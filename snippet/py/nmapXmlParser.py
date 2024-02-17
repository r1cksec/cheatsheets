#!/usr/bin/env python3

import xml.etree.ElementTree as ET

tree = ET.parse("file.xml")

root = tree.getroot()

for currentHost in root.findall("./host"):
    # get addresses
    for address in currentHost.findall("address"):
        addressD = address.get("addr")
        addressType = address.get("addrtype")
        vendor = address.get("vendor")

    # get hostname
    for hostname in currentHost.find("hostnames"):
        name = hostname.get("name")

    # check if ports are iterable
    if (currentHost.find("ports")):
        for extraPortsOrPort in currentHost.find("ports"):
            portid = extraPortsOrPort.get("portid")

            for state in extraPortsOrPort.findall("state"):
                state = state.get("state")

                # check if current port is open
                if (state == "open"):
                    print(portid)

                    # print service
                    for service in extraPortsOrPort.findall("service"):
                        print(service.get("name"))

                    # print product
                    for service in extraPortsOrPort.findall("service"):
                        if (service.get("product") != None):
                            print(service.get("product"))

                    # print version
                    for service in extraPortsOrPort.findall("service"):
                        if (service.get("version") != None):
                            print(service.get("version"))

