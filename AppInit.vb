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
  '   Calls: AppSettings :  frmAppSettings  : InitSettingsFileData 
  '                                           InitSetupFileData
  '                                           LoadAppSettings
  '                                           pApplicationPath
  '                                           RVMDataPath
  '                                           ReadSetupFile
  '                                           ReadSettingsFile
  '                         HUSetupFiles.OpenHUTextFile
  '                         Libraries.HUMsgLib.HUErrorMessageOK
  '
  '   Version: 1.0.0
  '
  '   Date: 28 Feb 2018
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================

  '==================== Messages ====================
  Private CStrInitializationProcessFailedMSg As String =
                                                    "Initialization Process has Failed"
  Private CStrInitializationProcessFailedTitle As String = "Initialization Failure"

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

    ' Get the Application path and Initialise the Setup and Settings files data elements
    frmAppSettings.pAppPath = My.Application.Info.DirectoryPath

    'Dim LocalUserAppDataPath As String
    'LocalUserAppDataPath = Application.LocalUserAppDataPath
    'MsgBox(LocalUserAppDataPath)

    'frmAppSettings.InitSettingsFileData()
    'frmAppSettings.InitSettingsFileData()

    ' First we have to load the Settings data from the RVMSettings.sl3 Database.  If the
    ' database does not exist, we create a new one with a Default set of data.
    'If Not frmAppSettings.ReadSetupFile() Then
    '  Libraries.HUMsgLib.HUErrorMessageOK(CStrInitializationProcessFailedMSg,
    '                                     CStrInitializationProcessFailedTitle)
    ' Return False

    'End If 'Not frmAppSettings.WriteSettingsFile 
    '    ' Now we read the RVMSettings file
    'frmAppSettings.ReadSettingsFile()

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
