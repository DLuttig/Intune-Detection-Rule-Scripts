$path1 = "C:\Program Files\Adobe\Acrobat DC\Acrobat\Acrobat.exe"
$path2 = "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe"

try{
    if((Test-Path -Path $path1) -or (Test-Path -Path $path2) -eq 1){
        Write-Output "Exist"
        exit 0
    }
    else{
        Write-Output "Doesn't Exist"
        exit 1
    }
}
catch{
    $errMsg= $_.Exeption.Message
        Write-host $errMsg
    exit 1
}