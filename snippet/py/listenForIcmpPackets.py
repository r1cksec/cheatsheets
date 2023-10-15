import socket

def listen():
    s = socket.socket(socket.AF_INET,socket.SOCK_RAW,socket.IPPROTO_ICMP)
    #s.setsockopt(socket.SOL_IP, socket.IP_HDRINCL, 1)
  
    while 1:
        data, addr = s.recvfrom(1508)
        print ("Packet from %r: %r" % (addr,data))

listen()

