# Development Environment Setup with Chocolatey
This repo contains a script for installing my development environment with chocolatey, an awesome package manager for Windows.

Firstly, you need to install Chocolatey. You can find more information from https://chocolatey.org/install. 

After installed choco, you should be sure that your execution policy is **Unrestricted** or **Bypass** for executing the script. You can control your execution policy by opening **PowerShell as Administrator** and run:
    
    Get-ExecutionPolicy

If it is not **Unrestricted** or **Bypass**, you should run that command:

    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine
    
Now, you're ready to execute the installation script (**PowerShell as Administrator**).
    
    .\setup_development_environment.ps1
    
You can activate or deactivate the packages in the list whatever you want. And, you can fork the repo and create your own development environment setup script.

## Visual Studio 2019 Installation Details
-------------
According to this link https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-community?view=vs-2019, 
you can select your workloads or components that you want to install. The script will install those packages:
  - Visual Studio Core Editor (Microsoft.VisualStudio.Component.CoreEditor)
  - ASP.NET and Web Development (Microsoft.VisualStudio.Workload.NetWeb)
  - Azure Development (Microsoft.VisualStudio.Workload.Azure)
  - Python Development (Microsoft.VisualStudio.Workload.Python)
  - .Net Core Cross-platform Development (Microsoft.VisualStudio.Workload.NetCoreTools)
  - Desktop Development with C++ (Microsoft.VisualStudio.Workload.NativeDesktop)
  - Game Development with C++ (Microsoft.VisualStudio.Workload.NativeGame)
  - Linux Development with C++ (Microsoft.VisualStudio.Workload.NativeCrossPlat)

You can also add those packages depends on your needs :
  - Node.js Development (Microsoft.VisualStudio.Workload.Node)
  - .NET Desktop Development (Microsoft.VisualStudio.Workload.ManagedDesktop)
  - Universal Windows Platform Development (Microsoft.VisualStudio.Workload.Universal)
  - Mobile Development with .NET (Microsoft.VisualStudio.Workload.NetCrossPlat)
  - Mobile Development with C++ (Microsoft.VisualStudio.Workload.NativeMobile)
  - Game Development with Unity (Microsoft.VisualStudio.Workload.ManagedGame)
  - Data Storage and Processing (Microsoft.VisualStudio.Workload.Data)
  - Data Science and Analytical Applications (Microsoft.VisualStudio.Workload.DataScience)
  - Visual Studio Extension Development (Microsoft.VisualStudio.Workload.VisualStudioExtension)
  - Office/SharePoint Development (Microsoft.VisualStudio.Workload.Office)
  
There is another easy way to install all packages and workloads with `--allWorkloads` and `--includeOptional` parameters if you have enough space for installing everything!!!

### Components
Individual components can be installed from the same link, 
some useful components below:
  - GitHub extension for Visual Studio (Component.GitHub.VisualStudio)
  - IncrediBuild - Build Acceleration (Component.Incredibuild)
  - OpenJDK (Microsoft distribution) (Component.OpenJDK)
  - Unreal Engine installer (Component.Unreal)
  - Cocos (Component.Cocos)

## Windows Terminal Theme Installation
-------------
If you want to install **Powerline Theme for Windows Terminal**, you can find more information on https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup that website. The script will install 2 fonts and theme packages for you. Also, it requires extra efforts for adding Powerline support to your Powershell, such as opening Powershell Profile and adding some codes to it.

Open your PowerShell profile with `notepad $PROFILE` or the text editor of your choice. Then add the following to the end of the file:

    Import-Module posh-git
    Import-Module oh-my-posh
    Set-Theme Paradox

## Known Issues
-------------

By the way, I had some issues, when I run the script. You may need to know before running the script.
- If you want to install **Spotify**, you should uninstall Windows Store version first.