# Learning to use matrices

[System.Array]$numbers = @();
for([int]$i = 25; $i -lt 50; $i++) {
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
            Write-Host "$($InputObject[$index]) " -NoNewline;
            #"{0:d2}" -f $InputObject[$index];
            $index++;
        }
        Write-Host "";
    }
}

Display-Matrix -Rows 5 -Columns 5 -InputObject $numbers;



