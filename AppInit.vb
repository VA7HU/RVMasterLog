Imports System.Windows

Module AppInit

  '========================================================================================
  '
  '   Filename : AppInit.vb
  '
  '   Description: Application Initialization
  '
  '   Called By:  frmMain : frmMain_Load
  '
  '   Calls: AppSettings :  frmAppSettings.ApplicationPath
  '                         frmAppSettings.SetupFileExists
  '                         frmAppSettings.ReadSetupFile
  '                         frmAppSettings.LoadAppSettings
  '                         frmAppSettings.RVMDataPath
  '
  '   Version: 1.0.0
  '
  '   Date: 30 Apr 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================

  '========================================================================================
  '          PRIVATE PROPERTIES
  '========================================================================================

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PUBLIC VARIABLES
  '========================================================================================

  '========================================================================================
  '          PUBLIC PROPERTIES
  '========================================================================================

  '========================================================================================
  '          PRIVATE ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================
  ''' <summary>
  ''' 
  ''' </summary>
  ''' <returns></returns>
  Public Function Initialise()

    ' Get the Application path
    frmAppSettings.ApplicationPath = My.Application.Info.DirectoryPath
    frmAppSettings.InitSetupFileData()
    frmAppSettings.InitSettingsFileData()

    ' First we have to read the InnoSetup file. If it Is Not there we cannot go any
    ' further. We then confirm all default databases are installed. If any are missing
    ' we reinstall them.

    'Dim InnoSetupFile As New HUTextFile
    'If Not InnoSetupFile.OpenHUTextFile(frmAppSettings.SetupFileNamePath) Then
    '  'If Not SetupFile.OpenHUTextFile("C:\Test") Then
    '  MessageBox.Show("Setup Not File Read")
    '  Return False
    'Else
    '  MessageBox.Show("Setup File Read")
    '  Return True
    'End If 'If not InnoSetupFile.OpenHUTextFile(fSetupFileNamePath)

  End Function 'Public Sub Initialise()

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================
End Module 'Module AppInit
