R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#
R1(config)#
R1(config)#int g0/0
R1(config-if)#ip add 30.0.0.1 255.255.255.0
R1(config-if)#no sh
R1(config-if)#
R1(config-if)#int
*Apr  1 08:22:15.987: %LINK-3-UPDOWN: Interface GigabitEthernet0/0, changed state to up
*Apr  1 08:22:16.987: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet0/0, changed state to up
R1(config-if)#int g1/0
R1(config-if)#ip add 20.0.0.2 255.255.255.0
R1(config-if)#no sh
*Apr  1 08:22:43.011: %LINK-3-UPDOWN: Interface GigabitEthernet1/0, changed state to up
*Apr  1 08:22:44.011: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet1/0, changed state to up
R1(config-if)#^Z
R1#
R1#
R1#r
*Apr  1 08:27:21.199: %SYS-5-CONFIG_I: Configured from console by console
R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#
R1(config)#router ospf 1
R1(config-router)#network 20.0.0.0 0.0.0.255 area 0
R1(config-router)#network 10.0.0.0 0.0.0.255 area 0
R1#
*Apr  1 08:30:10.635: %SYS-5-CONFIG_I: Configured from console by console
R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#
R1(config)#router ospf 1
R1(config-router)#network 30.0.0.0 0.0.0.255 area 0
R1(config-router)#network 20.0.0.0 0.0.0.255 area 0
R1(config-router)#
*Apr  1 08:31:14.447: %OSPF-5-ADJCHG: Process 1, Nbr 20.0.0.1 on GigabitEthernet1/0 from LOADING to FULL, Loading Done
R1(config-router)#
*Apr  1 08:31:41.079: %OSPF-5-ADJCHG: Process 1, Nbr 50.0.0.1 on GigabitEthernet0/0 from LOADING to FULL, Loading Done
R1(config-router)#^Z
R1#
R1#sh ip
*Apr  1 08:32:45.199: %SYS-5-CONFIG_I: Configured from console by console
R1#sh ip route
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
O        10.0.0.0 [110/2] via 20.0.0.1, 00:01:28, GigabitEthernet1/0
      20.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        20.0.0.0/24 is directly connected, GigabitEthernet1/0
L        20.0.0.2/32 is directly connected, GigabitEthernet1/0
      30.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        30.0.0.0/24 is directly connected, GigabitEthernet0/0
L        30.0.0.1/32 is directly connected, GigabitEthernet0/0
      50.0.0.0/24 is subnetted, 1 subnets
O        50.0.0.0 [110/2] via 30.0.0.2, 00:00:22, GigabitEthernet0/0
O     192.168.1.0/24 [110/3] via 30.0.0.2, 00:00:12, GigabitEthernet0/0
R1#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
Ethernet0/0                unassigned      YES unset  administratively down down
GigabitEthernet0/0         30.0.0.1        YES manual up                    up
GigabitEthernet1/0         20.0.0.2        YES manual up                    up
FastEthernet2/0            unassigned      YES unset  administratively down down
FastEthernet2/1            unassigned      YES unset  administratively down down
R1#
