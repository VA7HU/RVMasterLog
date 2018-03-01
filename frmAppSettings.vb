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
  Private cstrSettingsDBName As String = "RVMSettings.sl3"
  Private CStrRMVSubPath As String = "\RMV"
  Private CStrRMVDataSubPath As String = "\RMVData"
  Private CStrRMVLogbookSubPath As String = "\RMVLogbook"

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  Private fAppPath As String
  Private fRMVPath As String
  Private fRMVDataPath As String
  Private fRMVLogbooksPath As String

  Private fSettingsDBName As String
  Private fSettingsDBPath As String

  '========================================================================================
  '          PUBLIC VARIABLES
  '========================================================================================

  '========================================================================================
  '          PRIVATE ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================
  Public Sub InitSettingsDBData()
    pAppPath = fAppPath
    pSettingsDBPath = pAppPath
    pSettingsDBName = pSettingsDBPath + "\" + cstrSettingsDBName
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

  '----------------------------------------------------------------------------------------
  Public Property pSettingsDBPath() As String
    Get
      Return fSettingsDBPath
    End Get
    Set(ByVal path As String)
      fSettingsDBPath = path
    End Set
  End Property 'pSettingsDBPath

  Public Property pSettingsDBName() As String
    Get
      Return fSettingsDBName
    End Get
    Set(ByVal Name As String)
      fSettingsDBName = Name
    End Set
  End Property 'pSettingsDBPath

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
