#one-line SA attestation. Replace SubscriptionId at arg1 and TenantId at arg2
$tenantId="xxx";$subId="xxx";$C=(New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/lucapisano/arc_sa_benefit/refs/heads/main/script.ps1");icm -ScriptBlock ([Scriptblock]::Create($c)) -ArgumentList @($subId, $tenantId)