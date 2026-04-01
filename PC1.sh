
PC1> ip 10.0.0.1 255.255.255.0 10.0.0.2
Checking for duplicate address...
PC1 : 10.0.0.1 255.255.255.0 gateway 10.0.0.2


PC1> ping 30.0.0.1

84 bytes from 30.0.0.1 icmp_seq=1 ttl=254 time=29.203 ms
84 bytes from 30.0.0.1 icmp_seq=2 ttl=254 time=21.040 ms
84 bytes from 30.0.0.1 icmp_seq=3 ttl=254 time=30.665 ms
84 bytes from 30.0.0.1 icmp_seq=4 ttl=254 time=16.949 ms
84 bytes from 30.0.0.1 icmp_seq=5 ttl=254 time=13.421 ms

PC1> ping 50.0.0.1

84 bytes from 50.0.0.1 icmp_seq=1 ttl=253 time=44.361 ms
84 bytes from 50.0.0.1 icmp_seq=2 ttl=253 time=36.799 ms
84 bytes from 50.0.0.1 icmp_seq=3 ttl=253 time=26.053 ms
84 bytes from 50.0.0.1 icmp_seq=4 ttl=253 time=30.084 ms
84 bytes from 50.0.0.1 icmp_seq=5 ttl=253 time=27.562 ms

PC1> ping 192.168.1.1

84 bytes from 192.168.1.1 icmp_seq=1 ttl=252 time=47.952 ms
84 bytes from 192.168.1.1 icmp_seq=2 ttl=252 time=31.689 ms
84 bytes from 192.168.1.1 icmp_seq=3 ttl=252 time=33.782 ms
84 bytes from 192.168.1.1 icmp_seq=4 ttl=252 time=50.074 ms
84 bytes from 192.168.1.1 icmp_seq=5 ttl=252 time=35.340 ms

PC1> ping 192.168.1.2

84 bytes from 192.168.1.2 icmp_seq=1 ttl=60 time=95.307 ms
84 bytes from 192.168.1.2 icmp_seq=2 ttl=60 time=47.973 ms
84 bytes from 192.168.1.2 icmp_seq=3 ttl=60 time=69.493 ms
84 bytes from 192.168.1.2 icmp_seq=4 ttl=60 time=47.413 ms
84 bytes from 192.168.1.2 icmp_seq=5 ttl=60 time=65.338 ms
