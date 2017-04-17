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
  '   Version: 1.0.0
  '
  '   Date: 15 Apr 2017
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
    frmAppSettings.SetupFileName = frmAppSettings.ApplicationPath + "\" +
                                    frmAppSettings.cstrSetupFileName +
                                    frmAppSettings.CStrSettingsFileExt
    frmAppSettings.SettingsFileName = frmAppSettings.ApplicationPath + "\" +
                                      frmAppSettings.cstrSettingsFileName +
                                      frmAppSettings.CStrSettingsFileExt

    ' First we have to read the InnoSetup file. If it is not there we cannot go any
    ' further
    If frmAppSettings.SetupFileExists Then
      frmAppSettings.ReadSetupFile()
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
