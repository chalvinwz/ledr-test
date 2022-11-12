N=1
while IFS="" read -r p || [ -n "$p" ]; do
  # sudo nmap -T3 -sS ${p}
  echo "####################"
  echo "HOST_${N}"()
  echo "%%%%%%%%%%%%%%%%%%%%"
  N=$((${N} + 1))
done < Task7/hosts.txt