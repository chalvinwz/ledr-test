while IFS="" read -r p || [ -n "$p" ]
do
  sudo nmap -T3 -sS ${p}
done < Task7/hosts.txt