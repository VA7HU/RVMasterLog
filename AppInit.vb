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
  '                         frmAppSettings.ReadSetupFile
  '                         frmAppSettings.LoadAppSettings
  '                         frmAppSettings.RVMDataPath
  '                         frmAppSettings.ReadSetupFile
  '                         HUSetupFiles.OpenHUTextFile
  '
  '   Version: 1.0.0
  '
  '   Date: 6 May 2017
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
    ' further.
    If Not frmAppSettings.InnoSetupFile.OpenHUSetupFilesReader(frmAppSettings.SetupFileNamePath) Then
      'If Not frmAppSettings.InnoSetupFile.OpenHUSetupFiles("c:\test") Then
      Return False
    Else
      frmAppSettings.ReadSetupFile()
      Return True
    End If 'if not innosetupfile.openhutextfile(fsetupfilenamepath)

  End Function 'Public Sub Initialise()

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================
End Module 'Module AppInit
