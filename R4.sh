R4#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R4(config)#int g0/0
R4(config-if)#ip add 50.0.0.2 255.255.255.0
R4(config-if)#no sh
*Apr  1 08:24:37.483: %LINK-3-UPDOWN: Interface GigabitEthernet0/0, changed state to up
*Apr  1 08:24:38.483: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet0/0, changed state to up
R4(config-if)#int g1/0
R4(config-if)#
R4(config-if)#ip add 192.168.1.1 255.255.255.0
R4(config-if)#no sh
R4(config-if)#
R4(config-if)#
R4(config-if)#
R4(config-if)#
*Apr  1 08:25:05.519: %LINK-3-UPDOWN: Interface GigabitEthernet1/0, changed state to up
*Apr  1 08:25:06.519: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet1/0, changed state to up
R4(config-if)#router ospf 1
R4(config-router)#network 50.0.0.0 0.0.0.255 area 0
R4(config-router)#network 192.168.1.0 0.0.0.255 area 0
*Apr  1 08:31:47.027: %SYS-5-CONFIG_I: Configured from console by console
R4#sh ip ospf nei
R4#sh ip ospf neighbor

Neighbor ID     Pri   State           Dead Time   Address         Interface
50.0.0.1          1   2WAY/DROTHER    00:00:37    50.0.0.1        GigabitEthernet0/0
R4#
*Apr  1 08:32:20.803: %OSPF-5-ADJCHG: Process 1, Nbr 50.0.0.1 on GigabitEthernet0/0 from LOADING to FULL, Loading Done
R4#sh ip route
Codes: L - local, C - connected, S - static, R - RIP, M - mobile, B - BGP
       D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area
       N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2
       E1 - OSPF external type 1, E2 - OSPF external type 2
       i - IS-IS, su - IS-IS summary, L1 - IS-IS level-1, L2 - IS-IS level-2
       ia - IS-IS inter area, * - candidate default, U - per-user static route
       o - ODR, P - periodic downloaded static route, H - NHRP, l - LISP
       a - application route
       + - replicated route, % - next hop override

Gateway of last resort is not set

      10.0.0.0/24 is subnetted, 1 subnets
O        10.0.0.0 [110/4] via 50.0.0.1, 00:01:01, GigabitEthernet0/0
      20.0.0.0/24 is subnetted, 1 subnets
O        20.0.0.0 [110/3] via 50.0.0.1, 00:01:01, GigabitEthernet0/0
      30.0.0.0/24 is subnetted, 1 subnets
O        30.0.0.0 [110/2] via 50.0.0.1, 00:01:01, GigabitEthernet0/0
      50.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        50.0.0.0/24 is directly connected, GigabitEthernet0/0
L        50.0.0.2/32 is directly connected, GigabitEthernet0/0
      192.168.1.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.1.0/24 is directly connected, GigabitEthernet1/0
L        192.168.1.1/32 is directly connected, GigabitEthernet1/0
R4#
R4#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
Ethernet0/0                unassigned      YES unset  administratively down down
GigabitEthernet0/0         50.0.0.2        YES manual up                    up
GigabitEthernet1/0         192.168.1.1     YES manual up                    up
FastEthernet2/0            unassigned      YES unset  administratively down down
FastEthernet2/1            unassigned      YES unset  administratively down down
