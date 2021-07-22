# Rough Layout of Pre-Initialization Commands

# First, some housekeeping

# Install Powershell Windows Update Module for easy Updating in Powershell
Install-PackageProvider -Name NuGet -Force
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-Module PSWindowsUpdate
Install-WindowsUpdate -AcceptAll

# Restart Computer
Restart-Computer

# Look for Updates Again for some reason?
Install-Windowsupdate -AcceptAll

# Then, on to the real customization...

# Second, I like to enable SSH for Automation via Ansible and remote Connectivity

# Add OpenSSH Server to Windows for Automated Management via Ansible
Get-WindowsCapability -Name OpenSSH.Server* -Online | Add-WindowsCapability -Online

# Enable and Start the OpenSSH Server
Get-Service sshd | Start-Service
Get-Service sshd | Set-Service -StartupType Automatic

# Setting my Local Timezone
Set-TimeZone "Central Standard Time"