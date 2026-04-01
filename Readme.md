OSPF PROJECT OVERVIEW SUMMARY : 

This project demonstrates the design and implementation of a multi-router network using the OSPF (Open Shortest Path First) dynamic routing protocol in a simulated environment using GNS3. The topology consists of four routers (R1, R2, R3, and R4) interconnected through multiple subnets, forming a scalable and hierarchical network.

All routers are configured within OSPF Area 0 (backbone area) to ensure proper route propagation and adjacency formation. Each router interface is assigned appropriate IP addressing, and OSPF is enabled using network statements with wildcard masks to dynamically advertise connected networks.

The lab focuses on establishing OSPF neighbor relationships between routers using Hello packets, followed by the exchange of Link-State Advertisements (LSAs). Once adjacency is formed, routers build a complete link-state database and calculate the shortest path using the Dijkstra SPF algorithm, ensuring optimal routing decisions.

Two end hosts (PC1 and PC2) are placed in different network segments to validate end-to-end connectivity. Default gateways are configured on both PCs, enabling traffic to traverse multiple routers. Successful ICMP ping tests confirm that OSPF has converged and routing tables are correctly populated across the network.

Additionally, routing tables are verified using commands such as show ip route, where OSPF-learned routes are identified with the “O” code. Neighbor relationships are validated using show ip ospf neighbor, confirming full adjacency states between routers.

This project demonstrates key networking concepts including:

Dynamic routing using OSPF
OSPF neighbor formation and adjacency states
Use of wildcard masks in network statements
Link-State Database (LSDB) synchronization
Shortest Path First (SPF) algorithm for route calculation
End-to-end connectivity across multiple routed networks
Troubleshooting using routing and neighbor verification commands

Overall, this lab provides hands-on experience with enterprise-level routing concepts and strengthens understanding of how OSPF operates in real-world network environments.
