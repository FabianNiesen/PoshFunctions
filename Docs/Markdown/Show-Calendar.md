﻿---
external help file: PoshFunctions-help.xml
Module Name: poshfunctions
online version:
schema: 2.0.0
---

# Show-Calendar

## SYNOPSIS
Displays a visual representation of a calendar.

## SYNTAX

```
Show-Calendar [[-start] <DateTime>] [[-end] <DateTime>] [[-firstDayOfWeek] <Object>]
 [[-highlightDay] <Int32[]>] [[-highlightDate] <String[]>]
```

## DESCRIPTION
Displays a visual representation of a calendar.
This function supports multiple months and lets you highlight specific date ranges or days.

## EXAMPLES

### EXAMPLE 1
```
# Show a default display of this month.
```

Show-Calendar

### EXAMPLE 2
```
# Display a date range.
```

Show-Calendar -Start "March, 2010" -End "May, 2010"

### EXAMPLE 3
```
# Highlight a range of days.
```

Show-Calendar -HighlightDay (1..10 + 22) -HighlightDate "December 25, 2008"

## PARAMETERS

### -start
The first month to display as a datetime

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: [DateTime]::Today
Accept pipeline input: False
Accept wildcard characters: False
```

### -end
The last month to display as a datetime

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: $start
Accept pipeline input: False
Accept wildcard characters: False
```

### -firstDayOfWeek
The day of the month on which the week begins as an integer

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -highlightDay
Specific days (numbered) to highlight.
Used for date ranges like (25..31).
Array of integers
Date ranges are specified by the Windows PowerShell range syntax.
These dates are
enclosed in square brackets.

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -highlightDate
Specific days (named) to highlight.
These dates are surrounded by asterisks.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: [DateTime]::Today.ToString()
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
