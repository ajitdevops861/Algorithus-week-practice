echo " Starting health check"
echo "hostname"
hostname
echo "Disk usage"
df -h
echo "memory usage"
free -h
echo "health check completed"