# Author: Senna Semakula-Buuza
# Date: 18/04/18
# Company: Semakula LTD

#Importing sendMessage Script
. "C:\Users\User\Desktop\Git_repos\Windows-Automation-Timetable\src\sendMessage.ps1"




#test powershell script

#Import the csv file
$csv = Import-Csv C:\Users\User\Desktop\Git_repos\Windows-Automation-Timetable\input\timetable.csv
$ARR_RESULT = @()

function readTimetable{
	#Loop through column headers and create an object array
	$csv | ForEach-Object{
	
		$global:ARR_RESULT += @(New-Object PSObject -Property @{Name = $_.Task; Time = $_.Time; Day = $_.Day})
	}
}

readTimetable

function scheduleTasks{

	#Create a new task using the values from the array
	$global:ARR_RESULT | ForEach-Object{
		echo $_.Name $_.Time $_.Day
		echo "======="
	}
	
	
}

#Follow method signatures will need to start the appropiate applications
function learnLanguages{
	$TIME = $_.Time
	
	
	$global:ARR_RESULT | ForEach-Object{
		if ($_.Name -eq "Arabic"){
			$TIME = $_.Time
			$TASK_NAME = $_.Name
			$DAY = $_.Day
		}
	}
	
	echo $TASK_NAME
	echo $TIME
	echo $DAY
	
	
	#Schedule task to open up word document
	schTasks /Create /SC DAILY /TN "Arabic Message Warning" /TR (C:\Users\User\Desktop\Git_repos\Windows-Automation-Timetable\src\sendMessage.ps1 "Opening up Surah Document" "Time to start learning the Quran") /ST 23:29
	schTasks /Create /SC DAILY /TN "My Task" /TR "C:\Users\User\Documents\Arabic\Surahs.docx" /ST 23:29
	
	
	#Start-Process -FilePath "C:\Users\User\Documents\Arabic\Surahs.docx"
	
}

function practiceInterview{}

function workOnProjects{}

#Starts the application
function startApplication{
	Add-Type -AssemblyName PresentationCore,PresentationFramework
	$BtnType = [System.Windows.MessageBoxButton]::YesNoCancel
	$Title = "Starting Sublime Text!"
	$Body = "It's time to work on Project X"
	$ICON = [System.Windows.MessageBoxImage]::Warning
	
	[System.Windows.MessageBox]::Show($Body, $Title, $BtnType, $ICON)
	
	
	Start-Process -FilePath "C:\Program Files\Sublime Text 3\sublime_text.exe"
	
}

function checkState{
	#Check whether IDE is running
	$SUBLIME_STATUS = tasklist | findstr "sub*"
	$CHROME_STATUS = tasklist | findstr "chrome*"
	
	if (!$SUBLIME_STATUS){
		Write-Host "variable is null"
		startApplication
	}else{
		Write-Host "Sublime is already running!"
	}

}

checkState
#scheduleTasks
learnLanguages


	
