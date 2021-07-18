# Start instances
aws ec2 start-instances --instance-ids $(cat iolv6_contingencia-1.txt) 

# Remove old content on iolv6 remote
# Copy iolv6 content
# Scheduled task on .39

# Join instances to ELB
aws elb register-instances-with-load-balancer --load-balancer-name iol-elb --instances $(cat iolv6_contingencia-1.txt)

# End of Business, remove instances from ELB and shut them down

aws elb deregister-instances-from-load-balancer --load-balancer-name iol-elb --instances $(cat iolv6_contingencia-1.txt)

aws ec2 stop-instances --instance-ids $(cat iolv6_contingencia-1.txt)

