
Public Class frmAppSettings

  '========================================================================================
  '
  '   Filename : frmAppSettings.vb
  '
  '   Description: 
  '
  '   Called By:  
  '
  '   Calls:  Libraries : HUMsgLib.HUInformationMsgOK 
  '
  '   Version: 1.0.0
  '
  '   Date: 4 Mar 2018
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================
  Private cstrSettingsDBName As String = "RVMSettings.sl3"
  Private CStrRVMSubPath As String = "\RVM"
  Private CStrRVMDataSubPath As String = "\RVMData"
  Private CStrRVMLogbookSubPath As String = "\RVMLogbooks"

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  Private fAppPath As String
  Private fRVMPath As String
  Private fRVMDataPath As String
  Private fRVMLogbooksPath As String

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
    pRVMPath = fRVMPath + CStrRVMSubPath
    pRVMDataPath = fRVMPath + CStrRVMDataSubPath
    pRVMLogbooksPath = fRVMPath + CStrRVMLogbookSubPath

    pSettingsDBPath = pAppPath
    pSettingsDBName = pSettingsDBPath + "\" + cstrSettingsDBName

  End Sub ' Public Sub InitSetttingsFileData

  '========================================================================================
  Public Sub CreateDefaultSettingsDB()

    Libraries.HUMsgLib.HUInformationMsgOK("Creating a New Default DB", "New Database")

  End Sub ' CreateDefaultSettingsDB()

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
  Public Property pRVMPath() As String
    Get
      Return fRVMPath
    End Get
    Set(ByVal path As String)
      fRVMPath = path
    End Set
  End Property 'pRVMPath

  '----------------------------------------------------------------------------------------
  Public Property pRVMLogbooksPath() As String
    Get
      Return fRVMLogbooksPath
    End Get
    Set(ByVal path As String)
      fRVMLogbooksPath = path
    End Set
  End Property 'pRVMLogbooksPath

  '----------------------------------------------------------------------------------------
  Public Property pRVMDataPath() As String
    Get
      Return fRVMDataPath
    End Get
    Set(ByVal path As String)
      fRVMDataPath = path
    End Set
  End Property 'pRVMDataPath

  '----------------------------------------------------------------------------------------
  Public Property pSettingsDBPath() As String
    Get
      Return fSettingsDBPath
    End Get
    Set(ByVal path As String)
      fSettingsDBPath = path
    End Set
  End Property 'pSettingsDBPath

  '----------------------------------------------------------------------------------------
  Public Property pSettingsDBName() As String
    Get
      Return fSettingsDBName
    End Get
    Set(ByVal Name As String)
      fSettingsDBName = Name
    End Set
  End Property 'pSettingsDBPath

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
    Libraries.HUMsgLib.HUErrorMsgOK("Not Yet Implemented", Nothing)
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
    tbxRVMPath.Text = pRVMPath
    tbxRVMDataPath.Text = pRVMDataPath
    tbxRVMLogbookPath.Text = pRVMLogbooksPath

  End Sub 'frmAppSettings_Shown

  '========================================================================================
End Class 'Public Class frmAppSettings
