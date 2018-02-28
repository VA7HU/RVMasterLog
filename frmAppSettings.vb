Public Class frmAppSettings

  '========================================================================================
  '
  '   Filename : frmAppSettings.vb
  '
  '   Description: 
  '
  '   Called By:  
  '
  '   Calls: 
  '
  '   Version: 1.0.0
  '
  '   Date: 28 Feb 2018
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================
  Public CStrSettingsDBExt As String = ".sl3"
  Public cstrSettingsDBName As String = "RVMSettings"

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  Private fAppPath As String
  Private fRMVPath As String
  Private fRMVDataPath As String
  Private fRMVLogbooksPath As String


  'Private fAppDBName As String
  'Private fApplicationFileExt As String
  'Private fApplicationFullFileName As String
  'Private fApplicationFileNamePath As String

  '========================================================================================
  '          PUBLIC VARIABLES
  '========================================================================================

  '========================================================================================
  '          PRIVATE ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================
  Public Sub InitSettingsFileData()
    'pSettingsDBName = cstrSettingsDBName
    'pSettingsFileExt = CStrSettingsFileExt
    'pSettingsFullFileName = cstrSettingsFileName + CStrSettingsFileExt
    'pSettingsFilePath = pApplicationPath + "\"
    'pSettingsFileNamePath = pSettingsFilePath + pSettingsFullFileName
  End Sub ' Public Sub InitSetttingsFileData


  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================
  Public Property pAppPath() As String
    Get
      Return fAppPath
    End Get
    Set(ByVal path As String)
      fAppPath = path
    End Set
  End Property 'pAppPath

  '========================================================================================

  '========================================================================================
  '          MENU ROUTINES
  '========================================================================================

  '========================================================================================
  '         FILE MENU
  '========================================================================================

  '========================================.================================================
  '         SETTINGS MENU
  '========================================================================================

  '========================================================================================
  '         CONFIGURATION MENU
  '========================================================================================

  '========================================================================================
  '          COMMAND BUTTON ROUTINES
  '========================================================================================
  Private Sub btnCancle_Click(sender As Object, e As EventArgs) Handles btnCancle.Click
    Me.Close()
  End Sub 'btnCancle_Click

  '----------------------------------------------------------------------------------------
  Private Sub btnHelp_Click(sender As Object, e As EventArgs) Handles btnHelp.Click

  End Sub 'btnHelp_Click

  '----------------------------------------------------------------------------------------
  Private Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

  End Sub 'btnReset_Click

  '----------------------------------------------------------------------------------------
  Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
    Me.Close()
  End Sub 'btnSave_Click

  '========================================================================================
  '          CONTROL ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================
  '          FORM ROUTINES
  '========================================================================================
  Private Sub frmAppSettings_Shown(sender As Object, e As EventArgs) Handles Me.Shown

    ' Load Text box data and save Original data that can be changed
    tbxAppPath.Text = pAppPath
    'tbxRVMPath.Text = pRVMPath
    'tbxRVMDataPath.Text = pRVMDataPath
    'tbxRVMLogsPath.Text = pRVMLogsPath
    'chkUseLastLog.Checked = pUseLastLog
    'vblnOriginalUseLastLog = pUseLastLog

  End Sub 'frmAppSettings_Shown

  '========================================================================================
End Class 'Public Class frmMain
