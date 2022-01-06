KEY_NAME=demo
VPC_ID=vpc-0bea215acec39356f
SUBNET_ID=subnet-0186a7eb64f184ea7
AMI_ID=ami-09e67e426f25ce0d7
SG_ID=sg-040024af98396db03
#aws ec2 create-key-pair --key-name $KEY_NAME --query 'KeyMaterial' --output text > $KEY_NAME.pem

#aws ec2 create-security-group --group-name SSHAccess --description "Security group for SSH access" --vpc-id $VPC_ID

#aws ec2 authorize-security-group-ingress --group-id  --protocol tcp --port 22 --cidr 10.212.0.0/16

aws ec2 run-instances --image-id $AMI_ID --count 1 --instance-type t2.micro --key-name $KEY_NAME --security-group-ids $SG_ID --subnet-id $SUBNET_ID
