# Linux Command Line: Networking Basics

## Objective
heck network interface configuration, test DNS resolution and connectivity, and view listening network sockets.

### Procedure

Run the following commands:

```bash
getent hosts google.com
ping -c 4 google.com
ip addr
ss -tuln
```

## Results and Observations

1. 'getent hosts google.com' checks whether the system can resolve google.com to an IP address. If it returns an address, name resolution is working. If it returns no result, DNS may not be working.
2. `ping -c 4 google.com` sends four packets to test connectivity and name resolution. The output reports replies, packet loss, and round-trip times. 
3. `ip addr` lists the network interfaces and their IP addresses. The interface names and addresses vary by system.
4. `ss -tuln` lists listening TCP and UDP sockets, showing numeric addresses and port numbers. 

## Summary

These commands provide a basic check of network connectivity, local IP configuration, and listening network sockets. Their results vary depending on the machine, network, and active services.