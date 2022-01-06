# Start instances
aws ec2 start-instances --instance-ids $(cat iolv6_contingencia-1.txt) > StartInstances.txt
aws ec2 wait instance-running --instance-ids $(cat iolv6_contingencia-1.txt) >> StartInstances.txt
sleep 50

.\iolv6-rm-remote.ps1
$errorcount = $error.count

#.\iolv6-cp-remote.ps1
#if($errorcount -ne $error.count) {
#	$params = @{"text"="Deployer_IOLV6: Error en el copiado de las carpetas IOLV6"}
#	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#	Invoke-WebRequest -Uri https://hooks.slack.com/services/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 -Method POST -Body (ConvertTo-Json -Compress -InputObject $params)
#}
#else {
#	aws elb register-instances-with-load-balancer --load-balancer-name iol-elb --instances $(cat iolv6_contingencia-1.txt) >> StartInstances.txt
#	$params = @{"text"="Deployer_IOLV6: Se agregaron las instancias de CONTINGENCIA al balanceador"}
#	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#	Invoke-WebRequest -Uri https://hooks.slack.com/services/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 -Method POST -Body (ConvertTo-Json -Compress -InputObject $params)
#}