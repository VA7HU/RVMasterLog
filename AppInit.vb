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
  '   Date: 28 Apr 2017
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
  Public Function Initialise()

    ' Get the Application path
    frmAppSettings.ApplicationPath = My.Application.Info.DirectoryPath
    frmAppSettings.InitSetupFileData()
    frmAppSettings.InitSettingsFileData()

    ' First we have to read the InnoSetup file. If it Is Not there we cannot go any
    ' further. We then confirm all default databases are installed. If any are missing
    ' we reinstall them.
    If frmAppSettings.SetupFileExists Then
      frmAppSettings.ReadSetupFile()
      MessageBox.Show(frmAppSettings.RVMDataPath)
      If Not My.Computer.FileSystem.FileExists(frmAppSettings.RVMDataPath) Then

      End If
    Else
      MessageBox.Show("No Setup File Found")
      Return False
    End If 'If frmAppSettings.SetupFileExists

    ' Now we load the AppSettings data
    frmAppSettings.LoadAppSettings()

    Return True

  End Function 'Public Sub Initialise()

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================
End Module 'Module AppInit
