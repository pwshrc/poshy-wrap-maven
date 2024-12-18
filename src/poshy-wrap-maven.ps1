#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest
#Requires -Modules @{ ModuleName = "poshy-lucidity"; RequiredVersion = "0.4.1" }


function Invoke-MavenCleanInstall {
    mvn clean install @args
}
Set-Alias -Name mci -Value Invoke-MavenCleanInstall

function Invoke-MavenInstall {
    mvn install @args
}
Set-Alias -Name mi -Value Invoke-MavenInstall

function Invoke-MavenCleanPackage {
    mvn clean package @args
}
Set-Alias -Name mcp -Value Invoke-MavenCleanPackage

function Invoke-MavenPackage {
    mvn package @args
}
Set-Alias -Name mp -Value Invoke-MavenPackage

function Invoke-MavenReleasePrepare {
    mvn release:prepare @args
}
Set-Alias -Name mrprep -Value Invoke-MavenReleasePrepare

function Invoke-MavenReleasePerform {
    mvn release:perform @args
}
Set-Alias -Name mrperf -Value Invoke-MavenReleasePerform

function Invoke-MavenReleaseRollback {
    mvn release:rollback @args
}
Set-Alias -Name mrrb -Value Invoke-MavenReleaseRollback

function Invoke-MavenDependencyTree {
    mvn dependency:tree @args
}
Set-Alias -Name mdep -Value Invoke-MavenDependencyTree

function Invoke-MavenHelpEffectivePom {
    mvn help:effective-pom @args
}
Set-Alias -Name mpom -Value Invoke-MavenHelpEffectivePom

function Invoke-MavenCleanInstallSkipTests {
    mvn clean install -Dmaven.test.skip=true @args
}
Set-Alias -Name mcisk -Value Invoke-MavenCleanInstallSkipTests

function Invoke-MavenCleanPackageSkipTests {
    mvn clean package -Dmaven.test.skip=true @args
}
Set-Alias -Name mcpsk -Value Invoke-MavenCleanPackageSkipTests


Export-ModuleMember -Function * -Alias *
