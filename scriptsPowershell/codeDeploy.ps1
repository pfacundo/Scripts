invoke-webrequest https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/codedeploy-agent-updater.msi -outFile c:\codeDeployAgent.msi

Set-MpPreference -DisableRealtimeMonitoring $true
#excluir el agent de la lista de threats de windows defender
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath 'c:\codeDeployAgent.msi'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath 'C:\ProgramData\Amazon\CodeDeploy\bin\winagent.exe'"
c:\codeDeployAgent.msi


Set-MpPreference -DisableRealtimeMonitoring $false
powershell.exe -Command Get-Service -Name codedeployagent
