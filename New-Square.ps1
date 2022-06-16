[int]$horizontalLine = 0x2550;
[int]$verticalLine = 0x2551;

[int]$topLeftCorner = 0x2554;
[int]$topRightCorner = 0x2557;
[int]$bottomLeftCorner = 0x255A;
[int]$bottomRightCorner = 0x255D;

Function Write-TopOfSquare() {

    Param(
        [Parameter()]
        [int]$Length
    );

    for([int]$i = 0; $i -le $Length; $i++) {
        if($i -eq 0) {
            Write-Host ("{0}" -f ([Convert]::ToChar($topLeftCorner))) -NoNewline;
        }
        elseif($i -eq $Length) {
            Write-Host ("{0}" -f ([Convert]::ToChar($topRightCorner))) -NoNewline;
        }
        else {
            Write-Host ("{0}" -f ([Convert]::ToChar($horizontalLine))) -NoNewline;
        }
    }
    Write-Host '';
}


Function Write-BottomOfSquare() {

    Param(
        [Parameter()]
        [int]$Length
    );

    for([int]$i = 0; $i -le $Length; $i++) {
        if($i -eq 0) {
            Write-Host ("{0}" -f ([Convert]::ToChar($bottomLeftCorner))) -NoNewline;
        }
        elseif($i -eq $Length) {
            Write-Host ("{0}" -f ([Convert]::ToChar($bottomRightCorner))) -NoNewline;
        }
        else {
            Write-Host ("{0}" -f ([Convert]::ToChar($horizontalLine))) -NoNewline;
        }
    }
    Write-Host '';
}


Function Write-SidesOfSquare() {

    Param(
        [Parameter()]
        [int]$VerticalLength,

        [Parameter()]
        [int]$HorizontalLength
    );

    for($i = 0; $i -le $VerticalLength; $i++) {
        for([int]$j = 0; $j -le $HorizontalLength; $j++) {
            if($j -eq 0) {
                Write-Host ("{0}" -f ([Convert]::ToChar($verticalLine))) -NoNewline;
            }
            elseif($j -eq $HorizontalLength) {
                Write-Host ("{0}" -f ([Convert]::ToChar($verticalLine))) -NoNewline;
            }
            else {
                Write-Host ' ' -NoNewline;
            }
        }
        Write-Host '';
    } 
}

[int]$horizontalLength = Read-Host -Prompt "Size of Square";
[int]$verticalLength = $horizontalLength / 4;

Write-TopOfSquare -Length $horizontalLength;
Write-SidesOfSquare -VerticalLength $verticalLength -HorizontalLength $horizontalLength;
Write-BottomOfSquare -Length $horizontalLength;