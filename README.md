# psninja
Minimalist script<br/>

Step1. Edit IP and port on PS file<br/>
Step2. Base64 encoded with [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($string))<br/>
Step3. execute on target with powershell.exe -EncodedCommand $encodedcommand<br/>
Step4. Start Python server and handler<br/>
Step5. Have fun<br/>
