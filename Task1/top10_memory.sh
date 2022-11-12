echo "listing top 10 process IDs that are currently consuming most memory"
ps -eo pid,%mem --sort=-%mem | head -11
echo "done"