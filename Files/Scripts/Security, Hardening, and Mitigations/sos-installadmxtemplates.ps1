start-job -ScriptBlock {takeown /f %windir%\Policydefinitions /r /a; icacls %windir%\PolicyDefinitions /grant Administrators:(OI)(CI)F /t; copy-item -Path .\Files\PolicyDefinitions\* -Destination C:\Windows\PolicyDefinitions -Force -Recurse -ErrorAction SilentlyContinue}