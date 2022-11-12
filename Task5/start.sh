echo "starting all the relevant services"
for f in /etc/systemd/system/*.service; do 
  sudo systemctl start ${f}
done
echo "done"