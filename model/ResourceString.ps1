using namespace Worker369.AWS.Readonly

Add-Type -Path $PSScriptRoot/ResourceString.cs

# Define an Variable for Default String Format.
[ResourceStringFormat]$ResourceStringPreference = [ResourceStringFormat]::IdAndName
$ResourceStringPreference | Out-Null