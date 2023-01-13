# choco installation
# https://chocolatey.org/install

Write-Host "=== Creating your development environment! ==="

Write-Host "====> Installing Choco packages..."
choco --version
choco feature enable -name=exitOnRebootDetected
choco install ChocolateyGUI -y

# windows subsystem for linux
Write-Host "====> Installing windows subsystem for linux..."
#choco list --source windowsfeatures
choco install VirtualMachinePlatform -y -source windowsfeatures
choco install Microsoft-Windows-Subsystem-Linux -y -source windowsfeatures
choco install wsl2 --params "/Version:2 /Retry:true" -y
choco install wsl-ubuntu-2004 --params "/InstallRoot:true" -y

# core components
Write-Host "====> Installing core components..."
# choco install cmder -y
choco install powershell-core -y
#choco install microsoft-windows-terminal -y
choco install git -y
choco install curl -y
choco install wget -y
choco install nodejs-lts -y
choco install python3 -y
choco install cmake -y # version 3.22.1
#choco install 7zip -y
choco install docker-cli -y
choco install kubernetes-cli -y
#choco install minikube -y
choco install docker-desktop -y
choco install docker-compose -y
choco install terraform -y
choco install openssl -y
choco install putty -y
choco install jq -y
choco install dotnetcore-sdk -y
choco install openlens -y
choco install meld -y
choco install azure-cli -y
choco install tabby -y
#choco install mongodb-compass-isolated -y
choco install microsoftazurestorageexplorer -y

# text editors
Write-Host "====> Installing text editors..."
choco install sublimetext4 -y
#choco install notepadplusplus -y

# browsers
Write-Host "====> Installing web browsers..."
choco install firefox -y
choco install GoogleChrome -y
#choco install opera-gx -y
#choco install microsoft-edge -y

# git gui softwares
Write-Host "====> Installing git gui softwares..."
choco install git-fork -y
# choco install git-cola -y
# choco install gitextensions -y

# 3d development
Write-Host "====> Installing 3D development softwares..."
choco install blender -y #version 3.3.1
choco install epicgameslauncher -y
#choco install freecad -y
choco install steam -y
choco install unity-hub -y
#choco install unity -y
choco install renderdoc -y
choco install InkScape -y
choco install cuda -y
# choco install vulkan-sdk -y

# ides
Write-Host "====> Installing IDEs..."
choco install vscode -y
choco install visualstudio2019buildtools -y
#choco install visualstudio2019community -y --package-parameters "--includeRecommended --locale en-US --passive --add Microsoft.VisualStudio.Component.CoreEditor --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.NetCoreTools --add Microsoft.VisualStudio.Workload.Python --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.NativeGame --add Microsoft.VisualStudio.Workload.NativeCrossPlat --add Component.GitHub.VisualStudio --add Component.Incredibuild --add Microsoft.VisualStudio.Workload.VisualStudioExtension --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.Universal"
# choco install visualstudio2019professional -y --package-parameters "--includeRecommended --locale en-US --passive --add Microsoft.VisualStudio.Component.CoreEditor --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.NetCoreTools --add Microsoft.VisualStudio.Workload.Python --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.NativeGame --add Microsoft.VisualStudio.Workload.NativeCrossPlat --add Component.GitHub.VisualStudio --add Microsoft.VisualStudio.Workload.VisualStudioExtension --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.Universal"
choco install visualstudio2022professional -y --package-parameters "--includeRecommended --locale en-US --passive --add Microsoft.VisualStudio.Component.CoreEditor --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.NetCoreTools --add Microsoft.VisualStudio.Workload.Python --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.NativeGame --add Microsoft.VisualStudio.Workload.NativeCrossPlat --add Component.GitHub.VisualStudio --add Microsoft.VisualStudio.Workload.VisualStudioExtension --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.Universal"

# ide extensions
Write-Host "====> Installing IDE extensions..."
choco install cppcheck -y
choco install visualassist -y

# additional softwares
Write-Host "====> Installing additional softwares..."
choco install adobedigitaleditions -y
#choco install adobereader -y
choco install anydesk -y
choco install authy-desktop -y
# choco install bing-wallpaper -y # just for reminder there is no package like this
choco install calibre -y
#choco install dbeaver -y
choco install discord -y
choco install drmemory -y
choco install drawio -y
#choco install foxitreader -y
choco install filezilla -y
choco install firacode -y
# choco install freshbing -y # open-source bing-wallpaper app
choco install grammarly -y
choco install hwmonitor -y
choco install imagemagick -y
# choco install logitech-options-plus -y
choco install lghub -y
choco install nomachine -y
choco install obsidian -y
choco install obs-studio -y
#choco install passwordSafe -y
choco install pdftk -y
choco install postman -y
choco install powertoys -y
choco install protonvpn -y
choco install slack -y
choco install screenpresso -y
# choco install sourcetrail -y
choco install spotify -y
choco install sumatrapdf -y
choco install treesizefree -y
choco install vlc -y
choco install vmware-workstation-player -y
choco install vscode-drawio -y
choco install wireshark -y
choco install zoom -y

# video/photo editing softwares
Write-Host "====> Installing video/photo editing softwares..."
# choco install adobe-creative-cloud -y # just for reminder there is no package like this
# choco install adobe-lightroom -y # just for reminder there is no package like this
# choco install adobe-photoshop -y # just for reminder there is no package like this
# choco install deepmeta -y # just for reminder there is no package like this
# choco install vero -y # just for reminder there is no package like this
choco install rawtherapee -y
choco install shotcut -y
choco install nomacs -y

Write-Host "=== Your development environment is ready to use! Enjoy! ==="