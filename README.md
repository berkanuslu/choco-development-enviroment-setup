# Development Environment Setup with Chocolatey
This repo contains a script for installing my development environment with chocolatey, an awesome package manager for Windows.

Firstly, you need to install Chocolatey. You can find more information from https://chocolatey.org/install. 

After installed choco, you should be sure that your execution policy is Unrestricted or Bypass for executing the script. You can control your execution policy by opening PowerShell as Administrator and run:
    
    Get-ExecutionPolicy

If it is not Unrestricted or Bypass, you should run that command:

    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine
    
Now, you're ready to execute the installation script (PowerShell as Administrator).
    
    .\setup_development_environment.ps1
    
You can activate or deactivate the packages in the list whatever you want. And, you can fork the repo and create your own development environment setup script.
