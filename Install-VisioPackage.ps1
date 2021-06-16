<#
.SYNOPSIS
  Install the Azure-Design Visio Stencils
  
.DESCRIPTION
  Install / Copy the Azure-Design Visio Stencils to appropriate location, 
  so that the stencils are available for use in Visio
  
.INPUTS
  None

.OUTPUTS
  None

.NOTES
  Version:        1.0
  Author:         Ebby Peter
  Creation Date:  17-Dec-2020
  Purpose/Change: Initial script development

.EXAMPLE
  .\Install-VisioPackage.ps1
#>

#--------------------------------------------------[Script Parameters]--------------------------------------------------
[CmdletBinding()]
param ()

#-----------------------------------------------------[Declarations]----------------------------------------------------
[string]$repoName = "Azure-Design";
[string]$authorName = "David-Summers";
[string]$defaultBranch = "master";

#------------------------------------------------------[Functions]------------------------------------------------------
function DownloadGitHubRepository { 
    [OutputType([String])]
    [CmdletBinding()]
    param( 
       [Parameter(Mandatory=$true)] 
       [string] $Name, 
        
       [Parameter(Mandatory=$true)] 
       [string] $Author, 
        
       [Parameter(Mandatory=$false)] 
       [string] $Branch, 
        
       [Parameter(Mandatory=$false)] 
       [string] $Location 
    ) 
    
    if(!$Branch) {
        $Branch = "master";
    }
    
    if(!$Location) {
        $Location = $PSScriptRoot;
    }

    # Force to create a zip file 
    $zipFile = $PSScriptRoot + "\temp.zip";
    New-Item $zipFile -ItemType File -Force

    $repositoryZipUrl = "https://api.github.com/repos/$Author/$Name/zipball/$Branch"  
    # download the zip 
    Write-Host 'Starting downloading the GitHub Repository'
    Invoke-RestMethod -Uri $repositoryZipUrl -OutFile $zipFile
    Write-Host 'Download finished'

    #Extract Zip File
    Write-Host 'Starting unziping the GitHub Repository locally'
    Expand-Archive -Path $zipFile -DestinationPath $Location -Force
    Write-Host 'Unzip finished'
    [String]$unzipFolder = (Get-ChildItem -Path $Location -Filter "$Author-$Name-*" -Recurse -Directory).Fullname
    
    # remove zip file
    Remove-Item -Path $zipFile -Force 

    return $unzipFolder
}

#------------------------------------------------------[Execution]------------------------------------------------------
[string]$githubFolder = (DownloadGitHubRepository -Name $repoName -Author $authorName -Branch $defaultBranch)[-1];
[String]$destination = Get-ChildItem HKCU:\Software\Microsoft\Office\ -Recurse `
  | Where-Object {$_.PSChildName -eq "Application"} `
  | Get-ItemProperty -Name MyShapesPath `
  | Select-Object -ExpandProperty MyShapesPath;

Write-Host "Starting to install Azure-Design Stencils locally";
$files = Get-ChildItem $gitHubFolder -Recurse -Force -Filter *.vssx;

$directory = New-Item -ItemType Directory -Path $destination -Name $repoName -Force;
foreach($file in $files) {
  if(!$file.FullName.Contains("\Archive\")){
    Copy-Item -Path $file.FullName -Destination (($directory.FullName) + "\" + ($file.NameString)) -Force;
  }
}

Remove-Item -Path $githubFolder -Recurse -Force -Confirm:$false;