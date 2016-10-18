1. What are some design philosophies of the Linux operating system?

	- There are 9 major design philosophies of Linux
	1. Small is Beautiful
	2. Each program does one thing well
	3. Prototype as soon as possible
	4. Choose portibility over efficiency
	5. Store data in flat text files
	6. Use software leverage
	7. Use shell scripts to increase leverage and portability
	8. Avoid captive user interfaces
	9. Make every program a filter

2. What is a VPS (Virtual Private Server)?

	- A virtual private server is a server that is hosted in a virtual environment on either a local or networked machine. The server can be running a number of different operating systems but linux is most common. The server can then have a port that is opened up that allows users to connect to the server over the internet and access files on that server. A VPS is typically less expensive than a physical server, and it has abilities to balance the network traffic and allocate resources accordingly. 

3. It's a bad idea to run programs as the root user on a linux system because the root user has permissions to the file structure that a regular user wouldn't have. It's always best practice to allow a user to run standard applications with user permissions, and elevate certain privelages on an as-needed basis for the root user to amdministrate.