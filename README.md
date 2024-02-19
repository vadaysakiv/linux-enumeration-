# linux-enumeration-
![image](https://github.com/vadaysakiv/linux-enumeration-/assets/90182273/a799f266-4ff4-4f74-9748-f677718cb4fd)
Why Use an Automated Enumeration Tool?


Efficiency: Manual enumeration of Linux systems can be time-consuming and prone to human error. Automated tools streamline the process, allowing administrators to quickly gather relevant information.

Consistency: Automated tools ensure consistent results across different systems and environments, reducing the likelihood of overlooking critical details.

Scalability: In large or complex environments with multiple Linux systems, automated enumeration tools can scale effectively, providing consistent results across all systems.

Security: Regular enumeration of Linux systems is essential for identifying security vulnerabilities, misconfigurations, unauthorized users or processes, and other potential risks. Automated tools facilitate this process and help organizations maintain a robust security posture.
main reason: cause doing  same thing again and again is boring


**Enumeration included in this  bash script:**
**hostname
current user 
groups
kernal version
type of shell available
all temp directories content
current user sudo access 
current directory
content of /etc/passwd
content of /etc/shadow
all the writable directories
all the writable files
all the internet interface available and their ip address**


IF THE LIST IS TOO LONG USE THE SEARCH FEATURE IN LINUX 
![image](https://github.com/vadaysakiv/linux-enumeration-/assets/90182273/8e15dec0-1a9c-4089-b75f-f5483ba4d98b)
USAGE:

Clone the Repository: Clone the repository to your local linux machine

Copy code

git clone https://github.com/vadaysakiv/linux-enumeration-.git
Navigate to the Directory: Change directory to the tool's directory.


Change the permission for the bash file by:
chmod +x linux_enum.sh

Run the Script: Execute the script to start the enumeration process.
./linux_enum.sh

