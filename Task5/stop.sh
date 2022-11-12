echo "stopping all the relevant services"
for f in /etc/systemd/system/*.service; do 
  sudo systemctl stop ${f}
done
echo "done"