foreach($Remote in [System.IO.File]::ReadLines("C:\DeployFiles\iolv6_remote1.txt"))
{
	$errorcount = $error.count

	Get-ChildItem -Path E:\\sitios\IOLv6\ | Copy-Item -Destination \\$Remote\Sitios\IOLv6 -Recurse -Force
	
}

