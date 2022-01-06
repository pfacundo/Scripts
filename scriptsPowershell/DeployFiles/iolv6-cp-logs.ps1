foreach($Remote in [System.IO.File]::ReadLines("c:\iolv6_fulltime.txt"))
{
	Get-ChildItem -Path \\$Remote\IOLv6\log\ | Copy-Item -Destination \\10.0.0.143\iolv6-logs\$Remote -Recurse
}

