This script is a utility meant to facilitate [Windows Benefit](https://learn.microsoft.com/en-us/azure/azure-arc/servers/windows-server-management-overview) activation on Azure ARC.
This is a single-line script that you can execute from the Cloud Shell passing SubscriptionId and TenantId as input arguments

```powershell
$tenantId="xxx";$subId="xxx";$C=(New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/lucapisano/arc_sa_benefit/refs/heads/main/script.ps1");icm -ScriptBlock ([Scriptblock]::Create($c)) -ArgumentList @($subId, $tenantId)
```

Credits: Thank you to [Cobey Errett](https://github.com/cobeyerrett/arc-windowsattest) who originally wrote the script.