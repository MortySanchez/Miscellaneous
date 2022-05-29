# Learning to use matrices

[System.Array]$numbers = @();
for([int]$i = 0; $i -lt 25; $i++) {
    $numbers += $i;
}


Function Display-Matrix() {
    Param(
        
        [Parameter()]
        [int]$Rows,

        [Parameter()]
        [int]$Columns,

        [Parameter()]
        [System.Array]$InputObject
    )

    [int]$index = 0;

    for([int]$i = 0; $i -lt $Rows; $i++) {
        for([int]$j = 0; $j -lt $Columns; $j++) {
            Write-Host "$InputObject[$index]" -NoNewline;
            $index++;
        }
        Write-Host "";
    }
}

Display-Matrix -Rows 5 -Columns 5;