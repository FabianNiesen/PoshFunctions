﻿---
external help file: PoshFunctions-help.xml
Module Name: poshfunctions
online version: http://wonkysoftware.appspot.com
schema: 2.0.0
---

# Get-DuplicateFileName

## SYNOPSIS
To find duplicate file names within a given folder

## SYNTAX

```
Get-DuplicateFileName [[-Path] <String>] [<CommonParameters>]
```

## DESCRIPTION
To find duplicate file names within a given folder.
Alias for function 'Get-DupeFileName'.
Will run Get-ChildItem against the given path, groups them by filename, and finds those that have a count greater than 1

## EXAMPLES

### EXAMPLE 1
```
Get-DuplicateFileName -Path 'NonExistentFolder'
```

Get-DuplicateFileName : Path \[NonExistentFolder\] does not exist
At line:1 char:1
+ Get-DuplicateFileName -Path 'NonExistentFolder'
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) \[Write-Error\], WriteErrorException
    + FullyQualifiedErrorId : Microsoft.PowerShell.Commands.WriteErrorException,Get-DuplicateFileName

### EXAMPLE 2
```
Get-DuplicateFileName -Path 'TestFileName'
```

Get-DuplicateFileName : Path \[TestFileName\] is not a folder
At line:1 char:1
+ Get-DuplicateFileName -Path 'TestFileName'
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) \[Write-Error\], WriteErrorException
    + FullyQualifiedErrorId : Microsoft.PowerShell.Commands.WriteErrorException,Get-DuplicateFileName

### EXAMPLE 3
```
Get-DuplicateFileName -Path 'C:\Temp\TestFiles\'
```

Assuming you have a single duplicate filename found in the folder 'C:\Temp\TestFiles\'
Count Name                      Group
----- ----                      -----
    2 TestFile.txt              {@{Name=TestFile.txt; Directory=C:\Temp\TestFiles; LastWriteTime=9/21/2021 1:00:20 PM; LastWriteTimeUtc=9/21/2021 5:00:20 PM; Length=0; Ful...

### EXAMPLE 4
```
Get-DuplicateFileName -Path 'C:\Temp\TestFiles\' | Select-Object -ExpandProperty Group
```

Name             : TestFile.txt
Directory        : C:\Temp\TestFiles
LastWriteTime    : 9/21/2021 1:00:20 PM
LastWriteTimeUtc : 9/21/2021 5:00:20 PM
Length           : 0
FullName         : C:\Temp\TestFiles\TestFile.txt

Name             : TestFile.txt
Directory        : C:\Temp\TestFiles\Folder
LastWriteTime    : 9/21/2021 1:03:49 PM
LastWriteTimeUtc : 9/21/2021 5:03:49 PM
Length           : 38
FullName         : C:\Temp\TestFiles\Folder\TestFile.txt

## PARAMETERS

### -Path
Name of a folder.
Defaults to $pwd

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: $pwd
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Will return the following properties of each file:
    Name
    Directory
    LastWriteTimeUTC
    LastWriteTime
    Length
    FullName

## RELATED LINKS
