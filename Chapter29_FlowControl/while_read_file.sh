#!/bin/bash
# while-read: read lines from a file
IFS=":"
printf "%-24s%-6s%-10s%-25s%-35s%-50s\n" user uid gid home shell name
cat "/etc/passwd" | grep -E "^[^#]" | sort -t ":" -k 3n -k 4n |
	while read user psw uid gid name home shell; do
		# echo -e "${user}\t${uid}\t${gid}\t${name}\t${home}\t${shell}"
		printf "%-24s%-6s%-10s%-25s%-35s%-50s\n" $user $uid $gid $home $shell $name
	done
