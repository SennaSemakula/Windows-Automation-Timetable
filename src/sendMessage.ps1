#Script to send message to screen
function sendMessage([string]$Title, [string]$Message){
	Add-Type -AssemblyName PresentationCore,PresentationFramework
	$BtnType = [System.Windows.MessageBoxButton]::YesNoCancel
	$ICON = [System.Windows.MessageBoxImage]::Warning
	
	[System.Windows.MessageBox]::Show($Message, $Title, $BtnType, $ICON)
}

sendMessage "Starting Application X" "Haha you genius"

