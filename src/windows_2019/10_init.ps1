# First Boot Initialization

$adapters = Get-NetAdapter
$ipaddress = "172.17.3.21"
$netmask = 24
$gateway = "172.17.3.1"
$dns = "208.67.222.222,208.67.220.220"

<# Functions #>

function Initialize-NetAdapter {
    param (
        
    )
}

function Read-ItemCount {
    param (
        $InputObject = $false
    )
    return $(Measure-Object -InputObject $InputObject).count
}

function Confirm-NetAdapter {
    param(
        $InputObject = $(Get-NetAdapter)
    )
    Read-ItemCount -InputObject $InputObject

    if ($_adapters_count[0] -eq 1) {
        return $true
    }
    elseif ($_adapters_count[0] -gt 1) {
        Write-Warning "More than one Network Adapter is detected!"
        Write-Warning "Please perform the network configuration manually"
        exit 1
    }
    elseif ($_adapters_count[0] -eq 0) {
        Write-Warning "No Network Adapter is detected!"
        Write-Warning "Please perform the network configuration manually after adding additional adapters."
        exit 2
    }
}

# Remove IP Addresses from Existing Network Adapters

# Confirm that there is only 1 running adapter to configure
# If there is more than 1, or none, it will exit w/ code 1 (>1) or 2 (none)
Confirm-NetAdapter