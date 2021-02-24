function Show-Month {
<#
.SYNOPSIS
    Shows the months
.DESCRIPTION
    Shows the months
#>

    [CmdletBinding(ConfirmImpact='None')]
    Param ()

    begin {
        Write-Verbose -Message "Starting [$($MyInvocation.Mycommand)]"
    }

    process {
        0..11 |
            ForEach-Object { [Globalization.DatetimeFormatInfo]::CurrentInfo.MonthNames[$_] }
    }

    end {
        Write-Verbose -Message "Ending [$($MyInvocation.Mycommand)]"
    }

}
