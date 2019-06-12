``` powershell
> Get-HotFix
> Get-Help
> $env:path.split(";")
```

``` powershell
> Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All
> get-service | findstr vmcompute
> Get-Command -Module hyper-v | Out-GridView
> Get-Module Hyper-V -ListAvailable
```

``` powershell
> cd 'C:\Program Files\Docker\Docker\resources\'
> .\MobyLinux.ps1 -Create
> New-VM -Name "new 1" -MemoryStartupBytes 512MB
```

Error Hyper-V
```
Hyper-V\New-VM : Échec de l’opération.
Au caractère C:\Program Files\Docker\Docker\resources\MobyLinux.ps1:191 : 15
+         $vm = Hyper-V\New-VM -Name $VmName -Generation 2 -NoVHD
+               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+ CategoryInfo          : NotSpecified: (:) [New-VM], VirtualizationException
+ FullyQualifiedErrorId : Unspecified,Microsoft.HyperV.PowerShell.Commands.NewVM
```

https://www.altaro.com/hyper-v/install-hyper-v-powershell-module/
