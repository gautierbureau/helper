> winrm quickconfig
PS> Get-Service WinRM
PS> Enable-PSRemoting
PS> Restart-Service winrm

PS> Get-Item WSMan:\localhost\Client\TrustedHosts
PS> Set-Item WSMan:\localhost\Client\TrustedHosts -Value 10.132.144.77 : on my machine, 10.132.144.77 is the server computer 
PS> Set-Item WSMan:\localhost\Client\TrustedHosts -Value 10.159.89.248 : on the server, 10.159.89.248 is my machine

> winrm get winrm/config/client
> winrm e winrm/config/listener

PS> Test-WSMan -ComputerName 10.132.144.77

PS> Test-netConnection 10.132.144.77 -Port 5986

Firewall rules: Control Panel\All Control Panel Items\Administrative Tools
In Local Security Policy, Windows Firewall with Advanced Security, Inbound Rules: add new rule, rule type : Predefined with Windows Remote Management
I followed this: https://www.virtualease.fr/windows-server-configuration-winrm-remote-powershell/
This one as a good part on this too: https://support.infrasightlabs.com/article/how-to-enable-winrm-on-windows-servers-clients/

https://ss64.com/nt/winrs.html
https://www.dtonias.com/add-computers-trustedhosts-list-powershell/

## Remote sessions

winrs -r:10.132.144.77 -u:bureaupfref\bureaugau cmd

PS> $session = New-PSSession -cn 10.132.144.77 -cred bureaupfref\bureaugau
PS> Invoke-Command -Session $session -ScriptBlock {cmd.exe}
PS> Enter-PSSession -Session $session

## Links

https://serverfault.com/questions/429426/how-can-i-connect-to-a-windows-server-using-a-command-line-interface-cli
https://www.howtogeek.com/117192/how-to-run-powershell-commands-on-remote-computers/
https://docs.microsoft.com/fr-fr/powershell/scripting/learn/remoting/running-remote-commands?view=powershell-6

Lots of good infos on how to debug problems : http://www.hurryupandwait.io/blog/understanding-and-troubleshooting-winrm-connection-and-authentication-a-thrill-seekers-guide-to-adventure