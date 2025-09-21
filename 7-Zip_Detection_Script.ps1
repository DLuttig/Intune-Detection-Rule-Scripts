$path1 = "C:\Program Files\7-Zip\7z.exe"

try {
    if (Test-Path -Path $path1){
        Write-Output "Exist"
        exit 0
    }
    esle{
        Write-Output "Doesn't Exist"
        exit 1
    }
}
catch {
    <#Do this if a terminating exception happens#>
    $errMsg = $_.Exeption.Message
    Write-host $errMsg
    exit 1
}