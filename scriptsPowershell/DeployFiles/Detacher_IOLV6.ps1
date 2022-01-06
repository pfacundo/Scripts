aws elb deregister-instances-from-load-balancer --load-balancer-name iol-elb --instances $(cat iolv6_contingencia-1.txt) > StopInstances.txt

aws ec2 stop-instances --instance-ids $(cat iolv6_contingencia-1.txt) >> StopInstances.txt