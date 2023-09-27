#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


if (-not (Test-Command maven) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

function Invoke-MavenCleanInstall {
    mvn clean install @args
}
Set-Alias -Name mci -Value Invoke-MavenCleanInstall
Export-ModuleMember -Function Invoke-MavenCleanInstall -Alias mci

function Invoke-MavenInstall {
    mvn install @args
}
Set-Alias -Name mi -Value Invoke-MavenInstall
Export-ModuleMember -Function Invoke-MavenInstall -Alias mi

function Invoke-MavenCleanPackage {
    mvn clean package @args
}
Set-Alias -Name mcp -Value Invoke-MavenCleanPackage
Export-ModuleMember -Function Invoke-MavenCleanPackage -Alias mcp

function Invoke-MavenPackage {
    mvn package @args
}
Set-Alias -Name mp -Value Invoke-MavenPackage
Export-ModuleMember -Function Invoke-MavenPackage -Alias mp

function Invoke-MavenReleasePrepare {
    mvn release:prepare @args
}
Set-Alias -Name mrprep -Value Invoke-MavenReleasePrepare
Export-ModuleMember -Function Invoke-MavenReleasePrepare -Alias mrprep

function Invoke-MavenReleasePerform {
    mvn release:perform @args
}
Set-Alias -Name mrperf -Value Invoke-MavenReleasePerform
Export-ModuleMember -Function Invoke-MavenReleasePerform -Alias mrperf

function Invoke-MavenReleaseRollback {
    mvn release:rollback @args
}
Set-Alias -Name mrrb -Value Invoke-MavenReleaseRollback
Export-ModuleMember -Function Invoke-MavenReleaseRollback -Alias mrrb

function Invoke-MavenDependencyTree {
    mvn dependency:tree @args
}
Set-Alias -Name mdep -Value Invoke-MavenDependencyTree
Export-ModuleMember -Function Invoke-MavenDependencyTree -Alias mdep

function Invoke-MavenHelpEffectivePom {
    mvn help:effective-pom @args
}
Set-Alias -Name mpom -Value Invoke-MavenHelpEffectivePom
Export-ModuleMember -Function Invoke-MavenHelpEffectivePom -Alias mpom

function Invoke-MavenCleanInstallSkipTests {
    mvn clean install -Dmaven.test.skip=true @args
}
Set-Alias -Name mcisk -Value Invoke-MavenCleanInstallSkipTests
Export-ModuleMember -Function Invoke-MavenCleanInstallSkipTests -Alias mcisk

function Invoke-MavenCleanPackageSkipTests {
    mvn clean package -Dmaven.test.skip=true @args
}
Set-Alias -Name mcpsk -Value Invoke-MavenCleanPackageSkipTests
Export-ModuleMember -Function Invoke-MavenCleanPackageSkipTests -Alias mcpsk
