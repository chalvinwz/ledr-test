echo "enabling all the relevant services"
for f in /etc/systemd/system/*.service; do 
  sudo systemctl enable ${f}
done
echo "done"