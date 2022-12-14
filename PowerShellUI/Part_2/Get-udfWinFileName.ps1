Function Get-udfWinFileName
{
 [CmdletBinding()]
        param (
              [string]$initialDirectory
              )
 
 [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null

 $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
 $OpenFileDialog.initialDirectory = $initialDirectory
 $OpenFileDialog.filter = "All files (*.*)| *.*"
 $OpenFileDialog.ShowDialog() | Out-Null
 $OpenFileDialog.filename
} 


# Example Call:
<#
  File Picker Common Dialog...
   Get-udfWinFileName "C:\windows\"
#>
