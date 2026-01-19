#using namespace Worker369.AWS

$model_files        = "$PSScriptRoot/model/*.ps1"
$function_files     = "$PSScriptRoot/function/*.ps1"
$autocomplete_files = "$PSScriptRoot/autocomplete/*.ps1"

# Model
Get-Item $model_files | ForEach-Object {. $_.FullName}

# Functions = AWS Shell
Get-Item $function_files | ForEach-Object {. $_.FullName}

# Autocomplete
Get-Item $autocomplete_files | ForEach-Object {. $_.FullName}

# Aliases
Export-ModuleMember -Alias @(

    # Prefix List,
    'pl_resolve', 'pl_read',

    # VPC BPA Exclusion
    'vpc_bpa_excl_show',

    # VPC
    'vpc_show',

    # VPC CIDR Map
    'vpc_cidrmap_show',

    # VPC Peering
    'pcx_show',

    # Internet Gateway
    'igw_show',

    # Subnet
    'subnet_show',

    # Route Table
    'rt_show',

    # Default Route Table
    'rt_default', 'rt_default?', 'rt_default_clear',

    # Route Entry
    'route_show',

    # Network ACL
    'nacl_show',

    # Security Group
    'sg_show',

    # Default Security Group
    'sg_default', 'sg_default?',

    # Security Group Rule
    'sgr_show',

    # AWS Organization
    'org_tree',

    # CloudFormation
    'stack_show', 'stack_drift_show', 'stack_instance_show', 'stack_resource_show',
    'iac_scan_brief', 'iac_scan_detail',

    # Identity Center
    'sso_assign_show', 'sso_uperm_show',

    # Lambda
    'func_show',

    # S3
    's3_ls', 's3_cat',

    # EC2
    'ec2_console'
)

# Variables
Export-ModuleMember -Variable 'ResourceStringPreference'
Export-ModuleMember -Variable 'DefaultRouteTable'

[bool]$EnableHtmlOutput = $false
$EnableHtmlOutput | Out-Null
Export-ModuleMember -Variable 'EnableHtmlOutput'