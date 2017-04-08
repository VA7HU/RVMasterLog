Public Class frmMain

  '========================================================================================
  '
  '   Filename : frmMain.vb
  '
  '   Description: Application Main module
  '
  '   Called By:
  '
  '   Calls:  AppFinal  : Finalise
  '                         AppInit: Initialise 
  '
  '   Version: 1.0.0
  '
  '   Date: 8 Apr 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PRIVATE VARIABLES
  '/========================================================================================

  '========================================================================================
  '          PUBLIC VARIABLES
  '========================================================================================

  '========================================================================================
  '          PRIVATE ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================

  '========================================================================================
  '          MENU ROUTINES
  '========================================================================================
  Private Sub mnuFileExit_Click(sender As Object, e As EventArgs) Handles mnuFileExit.Click
    Application.Exit()
  End Sub 'Private Sub mnuFileExit_Click

  '=======================================================================================
  Private Sub mnuConfigurationDatabaseRVTypes_Click(sender As Object, e As EventArgs)
    frmRVTypesDB.ShowDialog()
  End Sub ' Private Sub mnuConfigurationDatabaseRVTypes_Click

  '========================================================================================
  Private Sub mnuSettings_Click(sender As Object, e As EventArgs) Handles mnuSettings.Click
    frmAppSettings.Show()
  End Sub 'Private Sub mnuSettings_Click

  '========================================================================================
  '          COMMAND BUTTON ROUTINES
  '========================================================================================

  '========================================================================================
  '          CONTROL ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================
  '          FORM ROUTINES
  '========================================================================================
  Private Sub frmMain_Load(sender As Object, e As EventArgs) Handles MyBase.Load
    If Not AppInit.Initialise() Then
      MessageBox.Show("Setup not there")
      Application.Exit()
    End If 'If Not AppInit.Initialise
  End Sub 'Private Sub frmMain_Load

  '========================================================================================
  Private Sub frmMain_FormClosing(sender As Object, e As FormClosingEventArgs) Handles MyBase.FormClosing
    MessageBox.Show("Form Closing")
    AppFinal.Finalise()
  End Sub ' Private Sub frmMain_FormClosing

  '----------------------------------------------------------------------------------------
  Private Sub frmMain_FormClosed(sender As Object, e As FormClosedEventArgs) Handles MyBase.FormClosed
    MessageBox.Show("Form CLose")
  End Sub ' Private Sub frmMain_FormClosed

  Private Sub ApplicationDBToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ApploicationDBToolStripMenuItem.Click
    frmApplicationDB.Show()
  End Sub

  '========================================================================================
End Class ' frmMain
