## Detailed description of the subject

InnovT3ch specializes in the development and installation of e-health software solutions. Each solution corresponds to a project, which is developed by one of the company's teams, working under the direction of one or two managers.

The company is headquartered near Limoges, but its employees often have to travel all over France and abroad to integrate their solutions into their customers' infrastructures, and to ensure their safe use, in compliance with healthcare standards and regulations.

For their business trips, company employees have to fill in a mission request on the D-PAR application, hosted on a server on the company's premises. The data required for these missions is sensitive, including information identifying not only the employees themselves and their managers, but also the customers, the targeted product, as well as the company's own budget identifiers.
InvvT3ch's own budgetary identifiers. For this reason, the S server, which hosts the D-PAR application and has the IP address 172.12.150.1, is network-isolated behind a router, and access to and from S is regulated so that only necessary and legitimate access can take place.

In the company, employees and team leaders work at fixed workstations, in the 192.168.16.0/20 subnetwork with a RI router (one of whose IP addresses will be the last address in the 192.168.16.0/20 range). The administration and accounting departments occupy fixed workstations in the 192.16.32.0/20 subnet, behind a Ra router (one of whose IP addresses will be the last address in the 192.16.32.0/20 range). of the 192.16.32.0/20 range). The IT Services Department (DSI) occupies a small private network (number of machines: 44) in a network independent of any other network already set up in the company, behind a router. behind an R3 router.

Finally, server S will be located behind router Ra, so you'll end up with router Ro, which is on the same network as the other routers and connects its network to the Internet.


# Work we have done

As part of this project, we've set up a Kathará lab that models the InnovT3ch company network. We performed filtering (using iptables) on the lab's machines in order to
* Enable the company's machines (employees + administration) to access the Internet and an external e-mail service in a controlled way.
* Protect the security of both the S server and the rest of the corporate network, while enabling it to operate as described above.
* Allow SSH access to the S server from the IT department's subnet (for remote configuration).

Our work began with a needs analysis phase. At the start of the project (also in the report, see below), we provided a diagram showing the network architecture, detailing the IP addresses of the machines and the relevant (sub)networks.