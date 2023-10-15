Function AdAuthentication
{
    param($username,$password)
    (new-object directoryservices.directoryentry "",$username,$password).psbase.name -ne $null
}

AdAuthentication "<domain>\<user>" "<password>"

