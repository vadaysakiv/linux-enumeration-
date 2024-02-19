#!/bin/bash


#printing ascii character 
printf "     _   _              ___                _               
 |  / \ /   /\  |    |   |  |\ | | | \/   |_ |\ | | | |\/| 
 |_ \_/ \_ /--\ |_   |_ _|_ | \| |_| /\   |_ | \| |_| |  | 
                                                          \n VERSION 1.0 BY: VADAYSAKIV \n\n"

#enumerating local information from the linus host





#############VARIABLES#################
#current user
who=$(whoami)  

#hostname
hostn=$(hostname)

#list all of the group of the system
etc_groups=$(cat /etc/group)

#id
id_id=$(id)

#kernel version
kernal_version=$(lscpu)

#type of shell
type_shell=$(cat /etc/shells)

#listing temporary file content

temp_files=$(ls -l /tmp /var/tmp /dev/shm)

#sudo privileges
priv=$(sudo -l)

#current working directory
current_directory=$(pwd)

#finding /etc/passwd file content
etc_passwd=$(sudo cat /etc/passwd 2>/dev/null)

#finding /etc/shadow file 
etc_shadow=$(sudo cat /etc/shadow 2>/dev/null)

#finding writable directories
find_writable_directories=$(find / -path /proc -prune -o -type d -perm -o+w 2>/dev/null)

#finding writable files
find_writable_files=$(find / -path /proc -prune -o -type f -perm -o+w 2>/dev/null)

###creating variable for enumerating ip of the machines
#ip of the machies 
interface_names=($(ifconfig | awk -F ':' '/^[a-zA-Z0-9]+:/{print $1}'))

# Get interface IP addresses
interface_ips=($(ifconfig | grep inet | awk '{print $2}' | cut -d':' -f2))



##################VARIABLES##########################
printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"

#PRINTING WHOAMI
printf "CURRENT USER: %s\n" "$who" 

#PRINTING HOSTNAME
printf "HOSTNAME: %s\n" "$hostn"



#PRINTING CURRENT WORKING DIRECTORY
printf "CURRENT WORKING DIRECTORY: %s\n" "$current_directory"
printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"
#PRINT ID
printf "ID: %s\n" "$id_id"
printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"

#PRINT KERNALE VERSION
printf "KERNAL VERSION: %s %n" "$kernal_version"
printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"


#PRINT TYPE OF SHELL
printf "TYPE OF SHELL AVAILABLE: %s\n" "$type_shell"
printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"



#PRINTING SUDO PRIVILEGES
printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"
printf "SUDO PRIVILEGES FOR THE CURRENT USERs \n  %s\n" "$priv"

printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"

#PRINTING ETC/GROUPS
printf "$etc_groups"

printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"

#PRINT TEMP CONTENT 
printf "LISTING TEMP DIRECTORY CONTENT \n"
printf "$temp_files"
printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"


# Iterate over both arrays simultaneously
printf "PRINTING ALL IP INTEFACE AND THEIR VALUE\n"
for ((i = 0; i < ${#interface_names[@]}; i++)); do
    printf "Interface: %s, IP: %s\n" "${interface_names[i]}" "${interface_ips[i]}"
done

printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"

#PRINTING ETC/PASSWD 
printf "ETC/PASSWD CONTENT \n %s \n" "$etc_passwd"
printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"

#PRINTING ETC/SHADOW FILE CONTENT
printf "ETC/SHADOW CONTENT \n %s \n" "$etc_passwd"

printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"
#PRINTING WRITABLE DIRECTORIES && FILES
printf "WRITABLE DIRECTORIES \n "
printf "$find_writable_directories"
printf "_____________________________________________________________\n\n"
printf "_____________________________________________________________\n\n"
printf "$find_writable_files"


