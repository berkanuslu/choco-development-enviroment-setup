# choco installation
# https://chocolatey.org/install

Write-Host "=== Creating your development environment! ==="

Write-Host "====> Installing Choco packages..."
choco --version
choco install ChocolateyGUI -y

# core components
Write-Host "====> Installing core components..."
choco install powershell-core -y
choco install microsoft-windows-terminal -y
choco install git -y
choco install curl -y
choco install wget -y
choco install nodejs -y
choco install python3 -y
choco install cmake -y
choco install 7zip -y
choco install docker-desktop -y
choco install kubernetes-cli -y
choco install Minikube -y
choco install docker-compose -y
choco install docker-cli -y
choco install terraform -y
choco install openssl -y
choco install putty -y
choco install jq -y
choco install redis -y
choco install redis-desktop-manager -y
#choco install redistray -y
choco install dotnetcore-sdk -y

# git gui softwares
Write-Host "====> Installing git gui softwares..."
choco install git-fork -y
#choco install gitextensions -y

# 3d development
Write-Host "====> Installing 3D development softwares..."
choco install blender -y
choco install epicgameslauncher -y
choco install freecad -y
choco install steam -y
choco install unity -y

# browsers
Write-Host "====> Installing web browsers..."
choco install firefox -y
choco install GoogleChrome -y
choco install opera-gx -y
#choco install microsoft-edge -y

# text editors
Write-Host "====> Installing text editors..."
choco install SublimeText3 -y
#choco install notepadplusplus -y

# ides
Write-Host "====> Installing IDEs..."
choco install vscode -y
choco install visualstudio2019buildtools -y
choco install visualstudio2019community -y --package-parameters "--includeRecommended --locale en-US --passive --add Microsoft.VisualStudio.Component.CoreEditor --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.NetCoreTools --add Microsoft.VisualStudio.Workload.Python --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.NativeGame --add Microsoft.VisualStudio.Workload.NativeCrossPlat --add Component.GitHub.VisualStudio --add Component.Incredibuild"

# ide extensions
Write-Host "====> Installing IDE extensions..."
choco install cppcheck -y
choco install pvs-studio -y
choco install visualassist -y

# fonts
Write-Host "====> Installing fonts..."
choco install firacode -y
choco install cascadiafonts -y
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force

# additional softwares
Write-Host "====> Installing additional softwares..."
#choco install adobereader -y
choco install dbeaver -y
#choco install foxitreader -y
choco install hwmonitor -y
choco install logitech-options -y
choco install passwordSafe -y
choco install postman -y
choco install slack -y
choco install sourcetrail -y
choco install spotify -y
choco install sumatrapdf -y
choco install treesizefree -y
choco install vlc -y
choco install vmware-workstation-player -y

# windows subsystem for linux
Write-Host "====> Installing windows subsystem for linux..."
#choco list --source windowsfeatures
choco install VirtualMachinePlatform -y -source windowsfeatures
choco install Microsoft-Windows-Subsystem-Linux -y -source windowsfeatures
choco install wsl2 --params "/Version:2 /Retry:true" -y
choco install wsl-ubuntu-2004 --params "/InstallRoot:true" -y

Write-Host "=== Your development environment is ready to use! Enjoy! ==="