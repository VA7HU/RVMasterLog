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
  '   Calls: frmAppSettings : CreateDefaultSettingsDB
  '                           InitSettingsDBData 
  '                                           
  '          Libraries  : HUMsgLib.HUErrorMessageOK
  '
  '   Version: 1.0.0
  '
  '   Date: 4 Mar 2018
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================
  Private cstrInitializationProcessFailedMSg As String =
                                                    "Initialization Process has Failed"
  Private cstrInitializationProcessFailedTitle As String = "Initialization Failure"

  Private cstrSettingsDBNotExistMsg As String = "  Settings Database Not Found." +
                                      vbCrLf +
                                      "Creating a New Default Settings Database."
  Private cstrSettingsDBNotCreatedMsg As String = "   Failure Creating Settings Database." +
                                                  vbCrLf +
                                                  "        RVMasterlog Must Close."
  Private cstrSettingsDBNotExistTitle As String = "Settings Database Not Found"

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

    Dim Result As DialogResult

    ' Get the Application path and Initialise the Settings Database Name
    frmAppSettings.pAppPath = My.Application.Info.DirectoryPath
    frmAppSettings.pRVMPath = Application.LocalUserAppDataPath
    frmAppSettings.InitSettingsDBData()

    'Check for the Settings Database. If not present then we either have to create a default
    ' one or close the program.
    If Not My.Computer.FileSystem.FileExists(frmAppSettings.pSettingsDBName) Then
      Libraries.HUMsgLib.HUErrorMsgOK(cstrSettingsDBNotExistMsg, cstrSettingsDBNotExistTitle)
      frmAppSettings.CreateDefaultSettingsDB()
    End If ' Not My.Computer.FileSystem.FileExists

    ' This ensures that we Abort if there was a failure creating the DB
    If Not My.Computer.FileSystem.FileExists(frmAppSettings.pSettingsDBName) Then
      Libraries.HUMsgLib.HUErrorMsgOK(cstrSettingsDBNotCreatedMsg, cstrSettingsDBNotExistTitle)
      Return False
    End If ' Not My.Computer.FileSystem.FileExists

    Return True

    '======================================================================================

    ' First we have to load the Settings data from the RVMSettings.sl3 Database. If the
    ' database does not exist, we create a new one with a Default set of data.
    'If Not frmAppSettings.ReadSetupFile() Then
    '  Libraries.HUMsgLib.HUErrorMessageOK(CStrInitializationProcessFailedMSg,
    '                                     CStrInitializationProcessFailedTitle)
    ' Return False

    'End If 'Not frmAppSettings.WriteSettingsFile 
    '    ' Now we read the RVMSettings file
    'frmAppSettings.ReadSettingsFile()


  End Function 'Public Sub Initialise()

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================
End Module 'Module AppInit
