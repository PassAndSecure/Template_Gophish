function Select-FileDialog {
    Add-Type -AssemblyName System.Windows.Forms
    $fileBrowser = New-Object System.Windows.Forms.OpenFileDialog
    $fileBrowser.Filter = "CSV files (*.csv)|*.csv"
    if ($fileBrowser.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
        return $fileBrowser.FileName
    } else {
        Write-Error "No file selected. Exiting script."
        exit
    }
}

function Get-OutputFileName {
    Add-Type -AssemblyName PresentationFramework
    [xml]$xaml = Get-Content -Path "$PSScriptRoot\Interface_Conversion_CSV_Gophish_M365.xaml"
    $reader = (New-Object System.Xml.XmlNodeReader $xaml)
    $form = [Windows.Markup.XamlReader]::Load($reader)
    
    $form.FindName("OkButton").Add_Click({
        $form.Tag = $form.FindName("FileNameTextBox").Text
        $form.Close()
    })

    $form.FindName("CancelButton").Add_Click({
        $form.Tag = $null
        $form.Close()
    })

    $form.ShowDialog() | Out-Null
    return $form.Tag
}

function Remove-Accents {
    param (
        [string]$inputString
    )
    $normalizedString = $inputString.Normalize([Text.NormalizationForm]::FormD)
    [Text.RegularExpressions.Regex]::Replace($normalizedString, '\p{IsCombiningDiacriticalMarks}+', '')
}

$csvInitialPath = Select-FileDialog

$outputFileName = Get-OutputFileName
if ([string]::IsNullOrEmpty($outputFileName)) {
    Write-Error "No output file name provided. Exiting script."
    exit
}

$csvDirectory = Split-Path -Path $csvInitialPath

$outputPath = Join-Path -Path $csvDirectory -ChildPath ($outputFileName + ".csv")

$csvInitial = Import-Csv -Path $csvInitialPath

$templateHeaders = @("Email", "Last Name", "Position", "First Name")

$newCsvData = @()

foreach ($row in $csvInitial) {
    $newRow = @{
        "Email"      = $row."Nom d’utilisateur principal"
        "Last Name"  = Remove-Accents -inputString $row.Nom
        "Position"   = Remove-Accents -inputString $row.Titre
        "First Name" = Remove-Accents -inputString $row.Prénom
    }
    $newCsvData += New-Object PSObject -Property $newRow
}

$newCsvData | Export-Csv -Path $outputPath -NoTypeInformation

Write-Host "Fichier converti avec succès et sauvegardé sous $outputPath"


#####################################
#  .-. .-')       (`-.   _  .-')    #
#  \  ( OO )    _(OO  )_( \( -O )   #
#  ,**. ,**.,**(_/   ,. \,******.   #
#  |  .'   /\   \   /(__/|   /`. '  #
#  |      /, \   \ /   / |  /  | |  #
#  |     ' _) \   '   /, |  |_.' |  #
#  |  .   \    \     /**)|  .  '.'  #
#  |  |\   \    \   /    |  |\  \   #
#  `**' '**'     `-'     `**' '**'  #
#####################################
