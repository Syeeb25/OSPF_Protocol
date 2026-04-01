R2#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R2(config)#int g0/0
R2(config-if)#ip add 30.0.0.2 255.255.255.0
R2(config-if)#no sh
R2(config-if)#int
*Apr  1 08:23:20.047: %LINK-3-UPDOWN: Interface GigabitEthernet0/0, changed state to up
*Apr  1 08:23:21.047: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet0/0, changed state to up
R2(config-if)#int g1/0
R2(config-if)#ip add 50.0.0.1 255.255.255.0
R2(config-if)#no sh
R2(config-if)#
R2(config-if)#
*Apr  1 08:23:51.199: %LINK-3-UPDOWN: Interface GigabitEthernet1/0, changed state to up
*Apr  1 08:23:52.199: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet1/0, changed state to up
R2(config-if)#router ospf 1
R2(config-router)#network 30.0.0.0 0.0.0.255 area 0
R2(config-router)#network 50.0.0.0 0.0.0.255 area 0
R2(config-router)#
*Apr  1 08:31:41.051: %OSPF-5-ADJCHG: Process 1, Nbr 30.0.0.1 on GigabitEthernet0/0 from LOADING to FULL, Loading Done
R2(config-router)#
*Apr  1 08:32:20.995: %OSPF-5-ADJCHG: Process 1, Nbr 192.168.1.1 on GigabitEthernet1/0 from LOADING to FULL, Loading Done
R2(config-router)#^Z
R2#
R2#sh ip
*Apr  1 08:33:10.203: %SYS-5-CONFIG_I: Configured from console by console
R2#sh ip route
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
O        10.0.0.0 [110/3] via 30.0.0.1, 00:01:24, GigabitEthernet0/0
      20.0.0.0/24 is subnetted, 1 subnets
O        20.0.0.0 [110/2] via 30.0.0.1, 00:01:24, GigabitEthernet0/0
      30.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        30.0.0.0/24 is directly connected, GigabitEthernet0/0
L        30.0.0.2/32 is directly connected, GigabitEthernet0/0
      50.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        50.0.0.0/24 is directly connected, GigabitEthernet1/0
L        50.0.0.1/32 is directly connected, GigabitEthernet1/0
O     192.168.1.0/24 [110/2] via 50.0.0.2, 00:00:48, GigabitEthernet1/0
R2#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
Ethernet0/0                unassigned      YES unset  administratively down down
GigabitEthernet0/0         30.0.0.2        YES manual up                    up
GigabitEthernet1/0         50.0.0.1        YES manual up                    up
FastEthernet2/0            unassigned      YES unset  administratively down down
FastEthernet2/1            unassigned      YES unset  administratively down down

