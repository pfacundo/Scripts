foreach($Remote in [System.IO.File]::ReadLines("C:\DeployFiles\iolv6_remote1.txt"))
{
$errorcount = $error.count

    Remove-Item -Recurse -Force \\$Remote\Sitios\IOLv6\* >> StartInstances.txt
	
	if($errorcount -ne $error.count) {
		$params = @{"text"="Deployer_IOLV6: Error en el borrado de la carpetas IOLV6 en el server "+ $Remote}
		[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
		Invoke-WebRequest -Uri https://hooks.slack.com/services/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 -Method POST -Body (ConvertTo-Json -Compress -InputObject $params)
	}
}
