<#
    Sonderzeichen:   33 - 47 | 58 - 64 | 91 - 96 
    Ziffern:         48 - 57
    Großbuchstaben:  65 - 90
    Kleinbuchstaben: 97 - 126
#>

function New-Password() {
    [string]$newPassword = $null;
    [int]$min = 0;
    for([int]$i = 0; $i -lt 10; $i++) {
        switch ((Get-Random -Minimum $min -Maximum 4)) {

            0 { 
                  $random_number = Get-Random -Minimum 33 -Maximum 47; 
                  $min++;  
              }
            1 { $random_number = Get-Random -Minimum 48 -Maximum 57;  }
            2 { $random_number = Get-Random -Minimum 65 -Maximum 90;  }
            3 { $random_number = Get-Random -Minimum 97 -Maximum 113; }
        };
        $newPassword += [char]$random_number;
    }
    return $newPassword;
}
