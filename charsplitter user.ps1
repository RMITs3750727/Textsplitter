$text = Read-Host -Prompt 'Input splittable text'

(
$text -split "([a-z0-9]{1})"  | ?{ $_.length -ne 0 }) -join " " | Out-File -FilePath C:\Users\$env:UserName\Desktop\splittext.txt
