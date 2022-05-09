Distance Vector Routing Algorithm:
  Step 1. A router transmits its distance vector to each of its neighbors in a routing packet.
  Step 2. Each router receives and saves the most recently received distance vector from each of       
its neighbors.
  Step 3. A router recalculates its distance vector when:
              a) It receives a distance vector from a neighbor containing different information than         
                  before.
              b) It discovers that a link to a neighbor has gone down.
  Step 4. The DV calculation is based on minimizing the cost to each destination
Dx(y) = Estimate of least cost from x to y 
                    C(x,v) =  Node x knows cost to each neighbor v
                    Dx   =  [Dx(y): y ∈ N ] = Node x maintains distance vector
                    Node x also maintains its neighbors' distance vectors
                    For each neighbor v, x maintains Dv = [Dv(y): y ∈N ]
 Step 5: From time-to-time, each node sends its own distance vector estimate to neighbors.
 Step 6: When a node x receives new DV estimate from any neighbor v, it saves v’s distance        vector and it updates its own DV using B-F equation:
Dx(y) = min { C(x,v) + Dv(y)} for each node y ∈ N

Link State Routing:
1. Each router learns about its own links, its own directly connected networks. This is done by detecting that an interface is in the up state. 
2. Each router is responsible for meeting its neighbors on directly connected networks. link state routers do this by exchanging Hello packets with other link-state routers on directly connected networks
 3. Each router builds a Link-State Packet (LSP) containing the state of each directly connected link. This is done by recording all the pertinent information about each neighbor, including neighbor ID, link type, and bandwidth.
 4. Each router floods the LSP to all neighbors, who then store all LSPs received in a database. Neighbors then flood the LSPs to their neighbors until all routers in the area have received the LSPs. Each router stores a copy of each LSP received from its neighbors in a local database. 
5. Each router uses the database to construct a complete map of the topology and computes the best path to each destination network.
