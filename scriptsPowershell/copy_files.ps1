foreach($Remote in [System.IO.File]::ReadLines("C:\DeployFiles\iolv6_fulltime.txt"))
{

	Get-ChildItem -Path C:\DeployFiles\files_to_copy\ | Copy-Item -Destination \\$Remote\sitios\IOLv6\Views\MiCuenta\ -Recurse -Force
	
}

