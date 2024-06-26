function Get-PugDcs {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [object]$PugDomain
    )

    #requires -Version 5

    $DirectoryContext = [System.DirectoryServices.ActiveDirectory.DirectoryContext]::New(0,$PugDomain)
    $PugDcs = [System.DirectoryServices.ActiveDirectory.DomainController]::FindAll($DirectoryContext)

    $PugDcs
}
