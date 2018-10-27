# psninja
Minimalist script

Step1. Edit IP and port on PS file
Step2. Base64 encoded with [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($string))
Step3. execute on target with powershell.exe -EncodedCommand $encodedcommand
Step4. Start Python server and handler
Step5. Have fun
