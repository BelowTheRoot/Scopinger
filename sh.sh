#! usr/bin/sh

echo "Hi! This is a Host Existence Check Servise\nplease enter the hostname, for example : google.com"
read host
ping -c1 $host > /dev/null 2>&1 
if [ $? -eq 0 ] 
then 
  echo "This host is available! You can visit it from this link https://"$host 
elif [ $? -eq 1 ]
then
  echo "This host might be unavailable, or ICMP Packets were silently discarded."
else 
  echo "Some Error happened! please check your network configurations" 
fi 
