#Script to send message to screen
param([string]$args1, [string]$args2)

	Add-Type -AssemblyName PresentationCore,PresentationFramework
	$BtnType = [System.Windows.MessageBoxButton]::YesNoCancel
	$ICON = [System.Windows.MessageBoxImage]::Warning
	
	#[System.Windows.MessageBox]::Show($Message, $Title, $BtnType, $ICON)
	[System.Windows.MessageBox]::Show($args1, $args2, $BtnType, $ICON)


